require 'shellexec/version'
require 'open3'
require 'timeout'

class ShellExec
  CMD_TIMEOUT = 20

  def self.cmd(cmd, cmd_name: cmd, secret: false, timeout: CMD_TIMEOUT)
    Timeout.timeout(timeout) do
      stdout, stderr, status = Open3.capture3(cmd)
      result = { stdout: stdout, stderr: stderr, status: status }
      raise secret ? "#{cmd_name} failed" : "#{cmd_name} failed with: #{result}" unless status.success?
      result
    end
  rescue Timeout::Error
    raise "#{cmd_name} timed-out"
  end
end
