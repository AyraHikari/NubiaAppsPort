.class Lcn/nubia/music/activity/FileNameInputActivity$1;
.super Ljava/lang/Object;
.source "FileNameInputActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/FileNameInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/FileNameInputActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/FileNameInputActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/music/activity/FileNameInputActivity$1;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$1;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->finish()V

    .line 68
    return-void
.end method
