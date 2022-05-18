.class Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryEntry"
.end annotation


# instance fields
.field public final contactId:J

.field public final dataId:J

.field public final destination:Ljava/lang/String;

.field public final destinationLabel:Ljava/lang/String;

.field public final destinationType:I

.field public final displayName:Ljava/lang/String;

.field public final displayNameSource:I

.field public final thumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 160
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 161
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 162
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 163
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 164
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 165
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    .line 166
    return-void
.end method
