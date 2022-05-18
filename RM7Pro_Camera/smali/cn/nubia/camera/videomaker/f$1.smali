.class Lcn/nubia/camera/videomaker/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/f;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/f;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f$1;->a:Lcn/nubia/camera/videomaker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mVideoMakerDoneButton click, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/f$1;->a:Lcn/nubia/camera/videomaker/f;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/f;->a(Lcn/nubia/camera/videomaker/f;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMakerFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f$1;->a:Lcn/nubia/camera/videomaker/f;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/f;->b(Lcn/nubia/camera/videomaker/f;)V

    return-void
.end method
