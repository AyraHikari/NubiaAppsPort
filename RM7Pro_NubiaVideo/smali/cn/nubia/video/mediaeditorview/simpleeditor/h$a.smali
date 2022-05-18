.class Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/h;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 3
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

    const-string v0, "SpecialMenuFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->z(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/h;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->y(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l(IIILjava/util/ArrayList;)V

    return-void
.end method
