.class Lcn/nubia/music/activity/DeleteItemsActivity$3;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/DeleteItemsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 134
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$3;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$3;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->finish()V

    .line 138
    return-void
.end method
