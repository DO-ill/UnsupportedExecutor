nextflow.enable.dsl = 2

process UNSUPPORTED_EXECUTOR_TASK {

    output:
        path "out.txt"

    script:
        """
        echo "This should fail in ICA due to unsupported executor" > out.txt
        """
}

workflow {
    UNSUPPORTED_EXECUTOR_TASK()
}
