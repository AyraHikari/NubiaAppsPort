.class Lcn/nubia/touping/Utils/FloatingWindowUtil$4;
.super Ljava/lang/Object;
.source "FloatingWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/FloatingWindowUtil;->showAdjustQualityDialog()V
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
    .line 315
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$4;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$4;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$200(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$4;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$100(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundleForSuggestPop(Landroid/content/Context;)V

    .line 320
    return-void
.end method
