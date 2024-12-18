<?php

namespace App\Commands\Tasks;

use App\Http\Integrations\Toggl\TogglConnector;
use App\Project;
use App\Task;
use LaravelZero\Framework\Commands\Command;

use function Laravel\Prompts\search;

class ListCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'tasks:list {project-name}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        Project::query()
            ->where('name', 'like', '%'.$this->argument('project-name').'%')
            ->firstOrFail()
            ->tasks
            ->each(fn (Task $task) => $this->line($task->name));
    }
}
