.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->m()V
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
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
