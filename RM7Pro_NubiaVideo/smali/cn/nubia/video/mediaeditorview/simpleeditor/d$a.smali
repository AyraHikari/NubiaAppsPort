.class Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/d;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CutMenuFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->d(Ljava/util/ArrayList;)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmTotalTime(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->y(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->z(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->A(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/d;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->z(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->k(FF)V

    return-void
.end method
