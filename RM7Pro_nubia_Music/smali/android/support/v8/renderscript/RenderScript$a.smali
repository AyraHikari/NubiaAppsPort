.class Landroid/support/v8/renderscript/RenderScript$a;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v8/renderscript/RenderScript;

.field b:Z

.field c:[I


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 822
    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript$a;->b:Z

    .line 811
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript$a;->c:[I

    .line 823
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    .line 825
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 830
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 831
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget v2, v2, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/RenderScript;->nContextInitToClient(I)V

    .line 832
    :goto_0
    iget-boolean v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->b:Z

    if-eqz v1, :cond_7

    .line 833
    aput v5, v0, v5

    .line 834
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget v2, v2, Landroid/support/v8/renderscript/RenderScript;->i:I

    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript$a;->c:[I

    invoke-virtual {v1, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nContextPeekMessage(I[I)I

    move-result v1

    .line 835
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->c:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 836
    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript$a;->c:[I

    aget v3, v3, v5

    .line 838
    if-ne v1, v6, :cond_3

    .line 839
    shr-int/lit8 v1, v2, 0x2

    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 840
    add-int/lit8 v0, v2, 0x3

    shr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 842
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget v4, v4, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {v1, v4, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextGetUserMessage(I[I)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 844
    new-instance v0, Landroid/support/v8/renderscript/RSDriverException;

    const-string v1, "Error processing message from RenderScript."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_1
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    iput-object v0, v1, Landroid/support/v8/renderscript/RenderScript$c;->a:[I

    .line 849
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    iput v3, v1, Landroid/support/v8/renderscript/RenderScript$c;->b:I

    .line 850
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    iput v2, v1, Landroid/support/v8/renderscript/RenderScript$c;->c:I

    .line 851
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript$c;->run()V

    goto :goto_0

    .line 853
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Received a message from the script with no message handler installed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 859
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget v2, v2, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/RenderScript;->nContextGetErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    const/16 v2, 0x1000

    if-lt v3, v2, :cond_4

    .line 862
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_4
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->r:Landroid/support/v8/renderscript/RenderScript$b;

    if-eqz v2, :cond_5

    .line 866
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->r:Landroid/support/v8/renderscript/RenderScript$b;

    iput-object v1, v2, Landroid/support/v8/renderscript/RenderScript$b;->a:Ljava/lang/String;

    .line 867
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->r:Landroid/support/v8/renderscript/RenderScript$b;

    iput v3, v1, Landroid/support/v8/renderscript/RenderScript$b;->b:I

    .line 868
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, v1, Landroid/support/v8/renderscript/RenderScript;->r:Landroid/support/v8/renderscript/RenderScript$b;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript$b;->run()V

    goto/16 :goto_0

    .line 870
    :cond_5
    const-string v2, "RenderScript_jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "non fatal RS error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 882
    :cond_6
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2, v3, v1}, Landroid/support/v8/renderscript/RenderScript$a;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 883
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 887
    :cond_7
    return-void
.end method
