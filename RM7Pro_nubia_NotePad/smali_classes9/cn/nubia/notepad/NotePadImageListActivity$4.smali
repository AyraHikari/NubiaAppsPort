.class Lcn/nubia/notepad/NotePadImageListActivity$4;
.super Ljava/lang/Object;
.source "NotePadImageListActivity.java"

# interfaces
.implements Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageListActivity;->checkCtaAndPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 359
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageListActivity$4;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$4;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->finish()V

    .line 368
    return-void
.end method

.method public onGranted()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$4;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$300(Lcn/nubia/notepad/NotePadImageListActivity;)V

    .line 363
    return-void
.end method
