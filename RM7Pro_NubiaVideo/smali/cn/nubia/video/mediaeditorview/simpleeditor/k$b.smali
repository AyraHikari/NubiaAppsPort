.class Lcn/nubia/video/mediaeditorview/simpleeditor/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/k;->z(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/k;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/k$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/k;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/k;->u(Lcn/nubia/video/mediaeditorview/simpleeditor/k;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
