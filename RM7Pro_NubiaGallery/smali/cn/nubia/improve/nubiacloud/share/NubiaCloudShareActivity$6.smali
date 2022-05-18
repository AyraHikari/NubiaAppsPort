.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->showFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 384
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1002(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 387
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    :goto_0
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->inValidFilename(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 392
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000e6

    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, ""

    .line 395
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 396
    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p2, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1002(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 398
    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 399
    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/commonui/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    .line 400
    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p2, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$1300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000e7

    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    .line 403
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-virtual {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->cleanImageViewFlag()V

    return-void
.end method
