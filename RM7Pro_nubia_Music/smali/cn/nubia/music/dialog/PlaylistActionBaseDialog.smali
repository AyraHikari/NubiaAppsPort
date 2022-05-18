.class public abstract Lcn/nubia/music/dialog/PlaylistActionBaseDialog;
.super Ljava/lang/Object;
.source "PlaylistActionBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field public mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

.field public mOKButton:Landroid/widget/Button;

.field private mOKClickListener:Landroid/view/View$OnClickListener;

.field public mPlaylistName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$2;-><init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;)V

    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f10008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 48
    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    .line 49
    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$1;-><init>(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;)V

    .line 50
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/dialog/PlaylistActionBaseDialog;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->getIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIdByName(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 100
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "playlist_id"

    aput-object v2, v1, v5

    const-string v2, "playlist_name=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const-string v4, "playlist_name"

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    const/4 v0, -0x1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract insertContentValue(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mContext:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 122
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 123
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKButton:Landroid/widget/Button;

    .line 124
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    .line 125
    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKClickListener:Landroid/view/View$OnClickListener;

    .line 126
    return-void
.end method

.method public setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    .line 60
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 65
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->mOKClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public abstract showSuccess(Ljava/lang/Boolean;)V
.end method
