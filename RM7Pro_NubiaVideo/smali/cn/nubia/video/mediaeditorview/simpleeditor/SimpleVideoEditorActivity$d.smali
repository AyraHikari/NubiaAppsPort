.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->k(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$d;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->l(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V

    :cond_0
    return-void
.end method
