.class Lcn/nubia/touping/WiredTouPingMainActivity$1;
.super Ljava/lang/Object;
.source "WiredTouPingMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredTouPingMainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredTouPingMainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$1;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity$1;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    .line 107
    return-void
.end method
