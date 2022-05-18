.class Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;
.super Ljava/lang/Object;
.source "MediaItemRename.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/rename/MediaItemRename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/rename/MediaItemRename;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/rename/MediaItemRename;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/rename/MediaItemRename;Lcn/nubia/improve/rename/MediaItemRename$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;-><init>(Lcn/nubia/improve/rename/MediaItemRename;)V

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

    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p2}, Lcn/nubia/improve/rename/MediaItemRename;->access$600(Lcn/nubia/improve/rename/MediaItemRename;)I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 166
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$700(Lcn/nubia/improve/rename/MediaItemRename;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000ad

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
