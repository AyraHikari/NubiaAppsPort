.class Lcn/nubia/improve/xcloud/CloudManager$4;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->doUseMobileData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$4;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 566
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$4;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cancel"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$4;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1000(Lcn/nubia/improve/xcloud/CloudManager;)V

    return-void
.end method
