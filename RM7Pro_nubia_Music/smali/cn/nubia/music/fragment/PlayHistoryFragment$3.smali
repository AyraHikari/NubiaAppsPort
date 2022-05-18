.class Lcn/nubia/music/fragment/PlayHistoryFragment$3;
.super Ljava/lang/Object;
.source "PlayHistoryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/PlayHistoryFragment;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/PlayHistoryFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$3;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    return-void
.end method
