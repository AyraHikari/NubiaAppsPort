.class Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->addRegisterRotationWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "currentTempPortrait":Z
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 170
    :cond_0
    const-string v1, "ScreenRecorder987"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "ScreenRecorder22222"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changedinfo rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$100(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$200(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    const-string v1, "ScreenRecorder2221"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  changed restart rotationChanged.get() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$200(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "ScreenRecorder22222"

    const-string v2, "changedinfo"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/ScreenCatchUtils/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    return-void
.end method
