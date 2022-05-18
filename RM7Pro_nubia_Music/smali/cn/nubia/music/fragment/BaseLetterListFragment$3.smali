.class Lcn/nubia/music/fragment/BaseLetterListFragment$3;
.super Ljava/lang/Object;
.source "BaseLetterListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$3;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$3;->a:Lcn/nubia/music/fragment/BaseLetterListFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$900(Lcn/nubia/music/fragment/BaseLetterListFragment;I)V

    .line 379
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 380
    return-void
.end method
