.class Lcn/nubia/touping/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/HelpActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/HelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/HelpActivity;

    .prologue
    .line 14
    iput-object p1, p0, Lcn/nubia/touping/HelpActivity$1;->this$0:Lcn/nubia/touping/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/touping/HelpActivity$1;->this$0:Lcn/nubia/touping/HelpActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/HelpActivity;->finish()V

    .line 18
    return-void
.end method
