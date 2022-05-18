.class final Lcom/zte/mifavor/custom/preference/PreferenceScreen$1;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/custom/preference/PreferenceScreen;->showDialog_handleDialog([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/mifavor/custom/preference/PreferenceScreen$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/mifavor/custom/preference/PreferenceScreen$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
