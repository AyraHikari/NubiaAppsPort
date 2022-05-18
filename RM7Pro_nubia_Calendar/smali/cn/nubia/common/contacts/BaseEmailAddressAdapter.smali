.class public abstract Lcn/nubia/common/contacts/BaseEmailAddressAdapter;
.super Lcn/nubia/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;,
        Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;,
        Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;,
        Lcn/nubia/common/contacts/BaseEmailAddressAdapter$EmailQuery;,
        Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    }
.end annotation


# static fields
.field private static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final DIRECTORY_LOCAL_INVISIBLE:J = 0x1L

.field private static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field private static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field private static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field private static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field private static final SEARCHING_CURSOR_MARKER:Ljava/lang/String; = "searching"

.field private static final TAG:Ljava/lang/String; = "BaseEmailAddressAdapter"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;-><init>(Landroid/content/Context;I)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcn/nubia/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 266
    iput p2, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    .line 268
    new-instance v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$1;-><init>(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;)V

    iput-object v0, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/common/contacts/BaseEmailAddressAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 51
    iget v0, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/common/contacts/BaseEmailAddressAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 495
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 496
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 497
    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # I

    .prologue
    const/4 v1, 0x1

    .line 555
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 556
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "emailAddress":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    .end local v0    # "emailAddress":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "excludePartition"    # I

    .prologue
    const/4 v4, 0x1

    .line 570
    invoke-virtual {p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v3

    .line 571
    .local v3, "partitionCount":I
    const/4 v2, 0x0

    .local v2, "partition":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 572
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 573
    invoke-virtual {p0, v2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 574
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 575
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "address":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v4

    .line 571
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isLoading(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    iget-boolean v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 590
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    const-string v1, ""

    .line 599
    :cond_0
    :goto_0
    return-object v1

    .line 594
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    if-nez p2, :cond_1

    .line 530
    const/4 p2, 0x0

    .line 551
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object p2

    .line 533
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gt v4, v7, :cond_2

    .line 534
    invoke-direct {p0, p2, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    :cond_2
    const/4 v0, 0x0

    .line 539
    .local v0, "count":I
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 540
    .local v3, "newCursor":Landroid/database/MatrixCursor;
    const/4 v4, -0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 541
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v0, v7, :cond_4

    .line 542
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "displayName":Ljava/lang/String;
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "emailAddress":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 545
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "emailAddress":Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v3

    .line 551
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 327
    .local v6, "directoryPartition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-object v2, v6, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 328
    .local v2, "directoryType":Ljava/lang/String;
    iget-object v3, v6, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 329
    .local v3, "directoryName":Ljava/lang/String;
    iget-boolean v0, v6, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, p1, v2, v3}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "emailAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    move-object v4, v5

    .line 336
    const/4 v5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 338
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;-><init>(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;Lcn/nubia/common/contacts/BaseEmailAddressAdapter$1;)V

    return-object v0
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 310
    .local v0, "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 316
    invoke-virtual {p0, p2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 317
    .local v0, "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0, p5}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p5}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "directoryCursor"    # Landroid/database/Cursor;
    .param p3, "defaultPartitionCursor"    # Landroid/database/Cursor;

    .prologue
    .line 368
    if-eqz p2, :cond_5

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 370
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 371
    .local v16, "preferredDirectory":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v6, "directories":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 373
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 377
    .local v10, "id":J
    const-wide/16 v20, 0x1

    cmp-long v19, v10, v20

    if-eqz v19, :cond_0

    .line 381
    new-instance v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    invoke-direct {v15}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;-><init>()V

    .line 382
    .local v15, "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iput-wide v10, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    .line 383
    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 384
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 385
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 386
    const/16 v19, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 387
    .local v14, "packageName":Ljava/lang/String;
    const/16 v19, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 388
    .local v17, "resourceId":I
    if-eqz v14, :cond_1

    if-eqz v17, :cond_1

    .line 391
    :try_start_0
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v18

    .line 392
    .local v18, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 393
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 394
    const-string v19, "BaseEmailAddressAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot resolve directory name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v18    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 407
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 408
    move-object/from16 v16, v15

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v7

    .line 398
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "BaseEmailAddressAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot resolve directory name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 410
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    .end local v10    # "id":J
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v17    # "resourceId":I
    :cond_3
    if-eqz v16, :cond_4

    .line 415
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 418
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 419
    .restart local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->addPartition(Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    .line 423
    .end local v6    # "directories":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    .end local v13    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v16    # "preferredDirectory":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v4

    .line 424
    .local v4, "count":I
    const/4 v9, 0x0

    .line 428
    .local v9, "limit":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 431
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v19

    if-lez v19, :cond_6

    .line 432
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 435
    :cond_6
    if-nez p3, :cond_8

    const/4 v5, 0x0

    .line 438
    .local v5, "defaultPartitionCount":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    move/from16 v19, v0

    sub-int v9, v19, v5

    .line 442
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    if-ge v8, v4, :cond_a

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v15

    check-cast v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 444
    .restart local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p1

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 446
    if-lez v9, :cond_9

    .line 447
    iget-boolean v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 448
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 449
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 442
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 436
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_3

    .line 452
    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    .restart local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 453
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 457
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :catchall_0
    move-exception v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 458
    throw v19

    .line 457
    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    :cond_a
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 462
    const/4 v8, 0x1

    :goto_6
    if-ge v8, v4, :cond_e

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v15

    check-cast v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 464
    .restart local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v8, v2, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 467
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 468
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 469
    new-instance v19, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    iget-wide v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v8, v2, v3}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;-><init>(Lcn/nubia/common/contacts/BaseEmailAddressAdapter;IJ)V

    move-object/from16 v0, v19

    iput-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    .line 471
    :cond_b
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->setLimit(I)V

    .line 472
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 462
    .end local v12    # "msg":Landroid/os/Message;
    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 474
    :cond_d
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 476
    iget-object v0, v15, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 480
    .end local v15    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_e
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 502
    invoke-virtual {p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 503
    invoke-virtual {p0, p2}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 508
    .local v0, "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 510
    iget-object v1, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 511
    invoke-direct {p0, p2, p3}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 522
    .end local v0    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    :goto_0
    return-void

    .line 515
    .restart local v0    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_1
    if-eqz p3, :cond_0

    .line 516
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 519
    .end local v0    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_2
    if-eqz p3, :cond_0

    .line 520
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 282
    iput-object p1, p0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    .line 283
    return-void
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 483
    invoke-virtual {p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcn/nubia/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 485
    .local v0, "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 486
    invoke-direct {p0}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcn/nubia/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 489
    .end local v0    # "partition":Lcn/nubia/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    return-void
.end method
