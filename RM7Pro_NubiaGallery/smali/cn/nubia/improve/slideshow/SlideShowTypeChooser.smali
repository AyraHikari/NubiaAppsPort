.class public Lcn/nubia/improve/slideshow/SlideShowTypeChooser;
.super Landroid/app/Activity;
.source "SlideShowTypeChooser.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mDialog:Landroid/app/AlertDialog;

    .line 35
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$1;-><init>(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)Landroid/app/AlertDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "hasAlbumPath"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901b3

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->removeViewAt(I)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x1040000

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100062

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$2;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$2;-><init>(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)V

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mDialog:Landroid/app/AlertDialog;

    .line 73
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$3;

    invoke-direct {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowTypeChooser$3;-><init>(Lcn/nubia/improve/slideshow/SlideShowTypeChooser;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowTypeChooser;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
