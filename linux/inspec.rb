control "User apps..." do

    title "ClamAV"
    describe package('clamav') do
    it { should be_installed }
    end

    title "vs-code"
    describe package('code') do
    it { should be_installed }
    end
    title "azure-data-studio"
    describe package('azure-data-studio') do
    it { should be_installed }
    end

    title "chrome"
    describe package('chrome') do
    it { should be_installed }
    end

    title "slack"
    describe package('slack') do
    it { should be_installed }
    end

    title "remmina"
    describe package('remmina') do
    it { should be_installed }
    end

    title "vlc"
    describe package('vlc') do
    it { should be_installed }
    end

    title "pandoc"
    describe package('pandoc') do
    it { should be_installed }
    end
end

control "DevOps apps..." do
    
    title "terraform"
    describe package('terraform') do
    it { should be_installed }
    end

    title "packer"
    describe package('packer') do
    it { should be_installed }
    end

    title "vagrant"
    describe package('vagrant') do
    it { should be_installed }
    end

    title "ansible"
    describe package('ansible') do
    it { should be_installed }
    end
end

control "VM apps..." do

    title "docker"
    describe package('docker') do
    it { should be_installed }
    end

    title "virtualbox"
    describe package('virtualbox') do
    it { should be_installed }
    end
end

control "cloud apps..." do

    title "aws-cli"
    describe package('aws-cli') do
    it { should be_installed }
    end
end






















