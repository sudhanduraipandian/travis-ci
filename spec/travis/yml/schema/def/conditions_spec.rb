describe Travis::Yml::Schema::Def::Conditions do
  describe 'conditions' do
    subject { Travis::Yml.schema[:definitions][:type][:conditions] }

    it do
      should eq(
        '$id': :conditions,
        type: :string,
        title: 'Conditions',
        summary: 'Conditions support version',
        enum: ['v0', 'v1'],
        flags: [:internal]
      )
    end
  end

  describe 'condition' do
    subject { except(Travis::Yml.schema[:definitions][:type][:condition], :description) }

    it do
      should eq(
        '$id': :condition,
        type: :string,
        title: 'If',
        summary: 'Condition to determine whether or not a build, stage, or job should be run',
        example: 'branch = master',
        see: {
          'Conditional Builds, Stages, and Jobs': 'https://docs.travis-ci.com/user/conditional-builds-stages-jobs/'
        }
      )
    end
  end
end
