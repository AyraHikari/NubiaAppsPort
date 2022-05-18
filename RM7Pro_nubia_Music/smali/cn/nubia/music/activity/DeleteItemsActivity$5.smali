.class Lcn/nubia/music/activity/DeleteItemsActivity$5;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/DeleteItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$5;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$5;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->finish()V

    .line 183
    return-void
.end method
