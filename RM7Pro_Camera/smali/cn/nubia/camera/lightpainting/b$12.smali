.class Lcn/nubia/camera/lightpainting/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$12;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 614
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$12;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 615
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$12;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;Z)V

    .line 616
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$12;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/lightpainting/b;->g(Lcn/nubia/camera/lightpainting/b;Z)V

    .line 618
    :cond_0
    invoke-static {}, Lcn/nubia/camera/av/c;->a()V

    .line 622
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " extra "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightPaitingFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
