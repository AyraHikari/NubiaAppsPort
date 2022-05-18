.class Lcn/nubia/touping/Utils/FloatingWindowUtil$2;
.super Ljava/lang/Object;
.source "FloatingWindowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/FloatingWindowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$2;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$2;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$000(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "[FloatingWindowUtil]"

    const-string v1, "============ dismiss ============="

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$2;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$000(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_0
    return-void
.end method
