.class Lcn/nubia/camera/multiRecord/h$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$1;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h$1;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiRecordManager"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$1;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;)I

    move-result v3

    invoke-static {v0, v3}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;I)I

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$1;->a:Lcn/nubia/camera/multiRecord/h;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;Z)Z

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$1;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->c(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/multiRecord/h$c;

    move-result-object v0

    new-instance v3, Lcn/nubia/camera/multiRecord/h$1$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/multiRecord/h$1$1;-><init>(Lcn/nubia/camera/multiRecord/h$1;)V

    invoke-virtual {v0, v3}, Lcn/nubia/camera/multiRecord/h$c;->post(Ljava/lang/Runnable;)Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h$1;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
