.class Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->A()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
