.class Lcn/nubia/touping/WiredHelpActivity$1;
.super Ljava/lang/Object;
.source "WiredHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredHelpActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredHelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredHelpActivity;

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/touping/WiredHelpActivity$1;->this$0:Lcn/nubia/touping/WiredHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/touping/WiredHelpActivity$1;->this$0:Lcn/nubia/touping/WiredHelpActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/WiredHelpActivity;->finish()V

    .line 16
    return-void
.end method
