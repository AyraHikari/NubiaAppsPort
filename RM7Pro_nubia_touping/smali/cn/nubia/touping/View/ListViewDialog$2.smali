.class Lcn/nubia/touping/View/ListViewDialog$2;
.super Ljava/lang/Object;
.source "ListViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/View/ListViewDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/View/ListViewDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/View/ListViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/touping/View/ListViewDialog$2;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog$2;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/View/ListViewDialog;->resetResearchCount()V

    .line 91
    return-void
.end method
