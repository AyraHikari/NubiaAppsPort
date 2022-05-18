.class Lcn/nubia/touping/View/ListViewDialog$3;
.super Ljava/lang/Object;
.source "ListViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/View/ListViewDialog;->startSearchAnim()V
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
    .line 223
    iput-object p1, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v0}, Lcn/nubia/touping/View/ListViewDialog;->access$300(Lcn/nubia/touping/View/ListViewDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v1}, Lcn/nubia/touping/View/ListViewDialog;->access$100(Lcn/nubia/touping/View/ListViewDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v2}, Lcn/nubia/touping/View/ListViewDialog;->access$208(Lcn/nubia/touping/View/ListViewDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v3}, Lcn/nubia/touping/View/ListViewDialog;->access$100(Lcn/nubia/touping/View/ListViewDialog;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog$3;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v0}, Lcn/nubia/touping/View/ListViewDialog;->access$300(Lcn/nubia/touping/View/ListViewDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method
