.class public Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;
.super Landroid/os/Binder;
.source "NubiaCloudTaskService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$LocalBinder;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    return-object v0
.end method
