.class final Lcn/nubia/ex/chips/Queries$2;
.super Lcn/nubia/ex/chips/Queries$Query;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/Queries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "contentFilter"    # Landroid/net/Uri;
    .param p3, "content"    # Landroid/net/Uri;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/ex/chips/Queries$Query;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
