.class Lcn/nubia/camera/au/b$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/b;JJ)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/au/b$a;->a:Lcn/nubia/camera/au/b;

    .line 51
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/au/b$a;->cancel()V

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/au/b$a;->a:Lcn/nubia/camera/au/b;

    invoke-static {v0}, Lcn/nubia/camera/au/b;->a(Lcn/nubia/camera/au/b;)Lcn/nubia/camera/au/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/au/b$b;->j()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/au/b$a;->onFinish()V

    return-void

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcn/nubia/camera/au/b$a;->a:Lcn/nubia/camera/au/b;

    invoke-static {p2}, Lcn/nubia/camera/au/b;->a(Lcn/nubia/camera/au/b;)Lcn/nubia/camera/au/b$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/nubia/camera/au/b$b;->a(Ljava/lang/String;)V

    return-void
.end method
