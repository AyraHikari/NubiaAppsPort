.class Lcn/nubia/music/activity/PlayListDetailActivity$3;
.super Ljava/lang/Object;
.source "PlayListDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/PlayListDetailActivity;->deletePlayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayListDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$3;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    return-void
.end method
