.class Lcn/nubia/commonui/app/AdjustNavUtils$1;
.super Ljava/lang/Object;
.source "AdjustNavUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AdjustNavUtils;-><init>(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AdjustNavUtils;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AdjustNavUtils;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils$1;->this$0:Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils$1;->this$0:Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-static {v0}, Lcn/nubia/commonui/app/AdjustNavUtils;->access$000(Lcn/nubia/commonui/app/AdjustNavUtils;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/app/AdjustNavUtils$1;->this$0:Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-static {v2}, Lcn/nubia/commonui/app/AdjustNavUtils;->access$100(Lcn/nubia/commonui/app/AdjustNavUtils;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/app/AdjustNavUtils;->access$200(Lcn/nubia/commonui/app/AdjustNavUtils;II)V

    return-void
.end method
