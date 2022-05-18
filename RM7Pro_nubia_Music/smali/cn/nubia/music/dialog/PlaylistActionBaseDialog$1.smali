.class Lcn/nubia/music/dialog/PlaylistActionBaseDialog$1;
.super Ljava/lang/Object;
.source "PlaylistActionBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/dialog/PlaylistActionBaseDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;


# direct methods
.method constructor <init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$1;->a:Lcn/nubia/music/dialog/PlaylistActionBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    return-void
.end method
