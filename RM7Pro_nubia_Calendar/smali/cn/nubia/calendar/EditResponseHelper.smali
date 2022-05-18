.class public Lcn/nubia/calendar/EditResponseHelper;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mParent:Landroid/app/Activity;

.field private mWhichEvents:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/EditResponseHelper;->mWhichEvents:I

    .line 62
    new-instance v0, Lcn/nubia/calendar/EditResponseHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/EditResponseHelper$1;-><init>(Lcn/nubia/calendar/EditResponseHelper;)V

    iput-object v0, p0, Lcn/nubia/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    iput-object p1, p0, Lcn/nubia/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/calendar/EditResponseHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/EditResponseHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcn/nubia/calendar/EditResponseHelper;->mWhichEvents:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/EditResponseHelper;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/EditResponseHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/calendar/EditResponseHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public getWhichEvents()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcn/nubia/calendar/EditResponseHelper;->mWhichEvents:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 57
    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    return-void
.end method

.method public setWhichEvents(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 53
    iput p1, p0, Lcn/nubia/calendar/EditResponseHelper;->mWhichEvents:I

    .line 54
    return-void
.end method

.method public showDialog(I)V
    .locals 6
    .param p1, "whichEvents"    # I

    .prologue
    const/4 v5, -0x1

    .line 78
    iget-object v2, p0, Lcn/nubia/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v2, :cond_0

    .line 79
    iput-object p0, p0, Lcn/nubia/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/calendar/EditResponseHelper;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0002

    iget-object v4, p0, Lcn/nubia/calendar/EditResponseHelper;->mListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    invoke-virtual {v2, v3, p1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00d0

    iget-object v4, p0, Lcn/nubia/calendar/EditResponseHelper;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 91
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/EditResponseHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 93
    if-ne p1, v5, :cond_1

    .line 96
    iget-object v2, p0, Lcn/nubia/calendar/EditResponseHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 97
    .local v1, "ok":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    .end local v1    # "ok":Landroid/widget/Button;
    :cond_1
    return-void
.end method
