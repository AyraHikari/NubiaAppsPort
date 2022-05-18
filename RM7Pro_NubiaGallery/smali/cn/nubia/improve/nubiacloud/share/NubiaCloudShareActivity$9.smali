.class Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$9;
.super Ljava/lang/Object;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x32


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$9;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 681
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x32

    if-lt p1, p2, :cond_0

    .line 682
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$9;->this$0:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;

    invoke-static {p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000ad

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
