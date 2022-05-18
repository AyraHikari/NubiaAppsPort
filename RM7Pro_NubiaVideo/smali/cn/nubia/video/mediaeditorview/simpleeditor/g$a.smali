.class Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;->a(ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method
