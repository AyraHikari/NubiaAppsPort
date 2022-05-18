.class Lcn/nubia/notepad/NotePadImageFolderActivity$1;
.super Ljava/lang/Object;
.source "NotePadImageFolderActivity.java"

# interfaces
.implements Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageFolderActivity;->checkCtaAndPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->finish()V

    .line 158
    return-void
.end method

.method public onGranted()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$000(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    .line 153
    return-void
.end method
