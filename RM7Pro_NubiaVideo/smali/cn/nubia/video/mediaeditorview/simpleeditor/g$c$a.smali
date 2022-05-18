.class Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/VideoItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThumbnail index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ThumbnailBitmapLoader"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x32

    const/16 v0, 0x78

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p2, v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->m(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    iget-object p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    .line 5
    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x12

    if-ne p1, p2, :cond_2

    .line 6
    :cond_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 7
    iput v1, p1, Landroid/os/Message;->what:I

    .line 8
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    iget-object p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->f(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
