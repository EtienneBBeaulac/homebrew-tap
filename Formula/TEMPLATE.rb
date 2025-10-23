# This is a template for creating new formulas
# Copy this file and modify it for your tool
# Delete this template when you add your first real formula

class YourToolName < Formula
  desc "Short description of your tool"
  homepage "https://github.com/YourUsername/your-tool"
  
  # For versioned releases (uncomment and update):
  # url "https://github.com/YourUsername/your-tool/archive/refs/tags/v1.0.0.tar.gz"
  # sha256 "abc123..." # Calculate with: curl -fsSL <url> | shasum -a 256
  
  # For HEAD installs (latest from main branch):
  head "https://github.com/YourUsername/your-tool.git", branch: "main"
  
  license "MIT"
  
  # Dependencies (if needed):
  # depends_on "python@3.11"
  # depends_on "node"
  
  def install
    # Installation logic
    # Examples:
    
    # For scripts:
    # bin.install "your-script.sh" => "your-tool"
    
    # For directories:
    # prefix.install "zsh-functions"
    
    # For data files:
    # (prefix/"share/your-tool").install "config.yml"
    
    # Example for a shell tool:
    bin.install "bin/your-tool"
    prefix.install "zsh-functions"
    
    # Create a wrapper or instructions
    # (prefix/"README").write <<~EOS
    #   To use this tool, add this to your .zshrc:
    #     source "$(brew --prefix your-tool)/zsh-functions/your-tool.zsh"
    # EOS
  end

  def caveats
    <<~EOS
      To use this tool, add the following to your ~/.zshrc:
        source "#{opt_prefix}/zsh-functions/your-tool.zsh"
      
      Then restart your shell or run:
        source ~/.zshrc
    EOS
  end

  test do
    # Test that the installation worked
    # Examples:
    
    # assert_match "version", shell_output("#{bin}/your-tool --version")
    # system "#{bin}/your-tool", "--help"
    
    # For shell functions, you might test that files exist:
    assert_predicate prefix/"zsh-functions/your-tool.zsh", :exist?
  end
end

