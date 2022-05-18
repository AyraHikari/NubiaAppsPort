.class public Lcom/android/calculator2/AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/AlertDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field private static final KEY_BUTTON_NEGATIVE:Ljava/lang/String;

.field private static final KEY_BUTTON_POSITIVE:Ljava/lang/String;

.field private static final KEY_MESSAGE:Ljava/lang/String;

.field private static final KEY_TITLE:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String; = "com.android.calculator2.AlertDialogFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/AlertDialogFragment;->KEY_MESSAGE:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_button_negative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_NEGATIVE:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_button_positive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_POSITIVE:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/AlertDialogFragment;->KEY_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showMessageDialog(Landroid/app/Activity;IIILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 69
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 70
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_1
    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/calculator2/AlertDialogFragment;->showMessageDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static showMessageDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/android/calculator2/AlertDialogFragment;

    invoke-direct {v1}, Lcom/android/calculator2/AlertDialogFragment;-><init>()V

    .line 90
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 91
    sget-object v3, Lcom/android/calculator2/AlertDialogFragment;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 92
    sget-object p2, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_NEGATIVE:Ljava/lang/String;

    const v3, 0x7f110073

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 94
    sget-object p0, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_POSITIVE:Ljava/lang/String;

    invoke-virtual {v2, p0, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    sget-object p0, Lcom/android/calculator2/AlertDialogFragment;->KEY_TITLE:Ljava/lang/String;

    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/calculator2/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {v1, v0, p4}, Lcom/android/calculator2/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/calculator2/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 130
    instance-of v0, p1, Lcom/android/calculator2/AlertDialogFragment$OnClickListener;

    if-eqz v0, :cond_0

    .line 131
    check-cast p1, Lcom/android/calculator2/AlertDialogFragment$OnClickListener;

    invoke-interface {p1, p0, p2}, Lcom/android/calculator2/AlertDialogFragment$OnClickListener;->onClick(Lcom/android/calculator2/AlertDialogFragment;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/android/calculator2/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 108
    :goto_0
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/calculator2/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1202b6

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0056

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    sget-object v2, Lcom/android/calculator2/AlertDialogFragment;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 115
    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_NEGATIVE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 117
    sget-object v1, Lcom/android/calculator2/AlertDialogFragment;->KEY_BUTTON_POSITIVE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0, v1, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 122
    :cond_1
    sget-object p0, Lcom/android/calculator2/AlertDialogFragment;->KEY_TITLE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object p0

    return-object p0
.end method
