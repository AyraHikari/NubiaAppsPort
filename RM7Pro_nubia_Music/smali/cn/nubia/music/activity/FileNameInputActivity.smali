.class public Lcn/nubia/music/activity/FileNameInputActivity;
.super Lcn/nubia/music/activity/BaseActivity;
.source "FileNameInputActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mFilePath:Ljava/lang/String;

.field private mFolderName:Landroid/widget/EditText;

.field private mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseActivity;-><init>()V

    .line 99
    new-instance v0, Lcn/nubia/music/activity/FileNameInputActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/FileNameInputActivity$3;-><init>(Lcn/nubia/music/activity/FileNameInputActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 152
    new-instance v0, Lcn/nubia/music/activity/FileNameInputActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/FileNameInputActivity$4;-><init>(Lcn/nubia/music/activity/FileNameInputActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/FileNameInputActivity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private makeFolderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFilePath:Ljava/lang/String;

    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcn/nubia/music/activity/FileNameInputActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/FileNameInputActivity;->reconstructFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reconstructFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x1

    move-object v1, p2

    .line 146
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    .line 149
    :cond_0
    return-object v1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->finish()V

    .line 181
    invoke-virtual {p0, v0, v0}, Lcn/nubia/music/activity/FileNameInputActivity;->overridePendingTransition(II)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/FileNameInputActivity;->setVolumeControlStream(I)V

    .line 41
    const-string v0, "layout_inflater"

    .line 42
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/FileNameInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    invoke-virtual {p0}, Lcn/nubia/music/activity/FileNameInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFilePath:Ljava/lang/String;

    .line 47
    :cond_0
    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/activity/FileNameInputActivity;->makeFolderName()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcn/nubia/music/activity/FileNameInputActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->disallowShowMagnifier(Landroid/widget/TextView;)V

    .line 62
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    iget-object v2, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/activity/FileNameInputActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/FileNameInputActivity$1;-><init>(Lcn/nubia/music/activity/FileNameInputActivity;)V

    .line 64
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 75
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/music/activity/FileNameInputActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/FileNameInputActivity$2;-><init>(Lcn/nubia/music/activity/FileNameInputActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mSaveButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 174
    :cond_0
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcn/nubia/music/activity/FileNameInputActivity;->finish()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onResume()V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    const-string v0, "defaultname"

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method
