.class public abstract Lcn/nubia/ex/chips/BaseRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcn/nubia/ex/chips/AccountSpecifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryListQuery;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$PhotoQuery;,
        Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    }
.end annotation


# static fields
.field private static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field private static final PHOTO_CACHE_SIZE:I = 0x14

.field private static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field private static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final QUERY_TYPE_EMAIL:I = 0x0

.field public static final QUERY_TYPE_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseRecipientAdapter"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConstraint:Ljava/lang/CharSequence;

.field private final mDelayedMessageHandler:Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExistingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mPreferredMaxResultCount:I

.field private final mQuery:Lcn/nubia/ex/chips/Queries$Query;

.field private final mQueryType:I

.field private mRemainingDirectoryCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "queryMode"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 500
    const/16 v0, 0xa

    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 501
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0
    .param p1, "queryMode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "preferredMaxResultCount"    # I

    .prologue
    .line 504
    invoke-direct {p0, p2, p3, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I
    .param p3, "queryMode"    # I

    .prologue
    .line 507
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    .line 508
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 510
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 511
    iput p2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    .line 512
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 513
    iput p3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQueryType:I

    .line 515
    if-nez p3, :cond_0

    .line 516
    sget-object v0, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    .line 523
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 518
    sget-object v0, Lcn/nubia/ex/chips/Queries;->PHONE:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    goto :goto_0

    .line 520
    :cond_1
    sget-object v0, Lcn/nubia/ex/chips/Queries;->EMAIL:Lcn/nubia/ex/chips/Queries$Query;

    iput-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    .line 521
    const-string v0, "BaseRecipientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1310(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/LinkedHashMap;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/Set;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/LinkedHashMap;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/Set;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/ex/chips/BaseRecipientAdapter;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method

.method private constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .param p1, "showMessageIfDirectoryLoadRemaining"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    .local p3, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    .local p4, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    const/4 v6, 0x0

    .line 667
    .local v6, "validEntryCount":I
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 668
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 669
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 670
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 671
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/ex/chips/RecipientEntry;

    .line 672
    .local v1, "entry":Lcn/nubia/ex/chips/RecipientEntry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-direct {p0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcn/nubia/ex/chips/RecipientEntry;)V

    .line 674
    add-int/lit8 v6, v6, 0x1

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 676
    .end local v1    # "entry":Lcn/nubia/ex/chips/RecipientEntry;
    :cond_1
    iget v8, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v6, v8, :cond_0

    .line 680
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    .end local v3    # "i":I
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    .end local v5    # "size":I
    :cond_2
    iget v7, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-gt v6, v7, :cond_3

    .line 681
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/ex/chips/RecipientEntry;

    .line 682
    .restart local v1    # "entry":Lcn/nubia/ex/chips/RecipientEntry;
    iget v8, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v6, v8, :cond_4

    .line 692
    .end local v1    # "entry":Lcn/nubia/ex/chips/RecipientEntry;
    :cond_3
    return-object v0

    .line 685
    .restart local v1    # "entry":Lcn/nubia/ex/chips/RecipientEntry;
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-direct {p0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcn/nubia/ex/chips/RecipientEntry;)V

    .line 688
    add-int/lit8 v6, v6, 0x1

    .line 689
    goto :goto_1
.end method

.method private doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 12
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I
    .param p3, "directoryId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 770
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    invoke-virtual {v0}, Lcn/nubia/ex/chips/Queries$Query;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 771
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    add-int/lit8 v2, p2, 0x5

    .line 773
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 774
    .local v6, "builder":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 775
    const-string v0, "directory"

    .line 776
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 778
    :cond_0
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 779
    const-string v0, "name_for_primary_account"

    iget-object v1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 780
    const-string v0, "type_for_primary_account"

    iget-object v1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 782
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 783
    .local v10, "start":J
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 784
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcn/nubia/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 783
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 785
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 792
    .local v8, "end":J
    return-object v7
.end method

.method private fetchPhotoAsync(Lcn/nubia/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 3
    .param p1, "entry"    # Lcn/nubia/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 719
    new-instance v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$1;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcn/nubia/ex/chips/RecipientEntry;)V

    .line 745
    .local v0, "photoLoadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 746
    return-void
.end method

.method private putOneEntry(Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 13
    .param p1, "entry"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p2, "isAggregatedEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p3, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    .local p4, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    .local p5, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v3, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    if-nez p2, :cond_1

    .line 631
    iget-object v3, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v5, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v6, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v7, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v8, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v10, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v12, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v3 .. v12}, Lcn/nubia/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_1
    iget-wide v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    iget-wide v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 639
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    iget-object v3, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v5, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v6, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v7, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v8, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v10, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v12, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v3 .. v12}, Lcn/nubia/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .restart local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    iget-object v3, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v5, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v6, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v7, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v8, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v10, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v12, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    invoke-static/range {v3 .. v12}, Lcn/nubia/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcn/nubia/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-wide v4, p1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setupOtherDirectories(Landroid/database/Cursor;)Ljava/util/List;
    .locals 14
    .param p1, "directoryCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 544
    iget-object v10, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 545
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v6, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    const/4 v7, 0x0

    .line 547
    .local v7, "preferredDirectory":Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 548
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 552
    .local v2, "id":J
    const-wide/16 v10, 0x1

    cmp-long v10, v2, v10

    if-eqz v10, :cond_0

    .line 556
    new-instance v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    invoke-direct {v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;-><init>()V

    .line 557
    .local v5, "params":Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "packageName":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 559
    .local v8, "resourceId":I
    iput-wide v2, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 560
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    .line 561
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 562
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 563
    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    .line 566
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 567
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    .line 568
    iget-object v10, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 569
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    iget-object v10, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 582
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 583
    move-object v7, v5

    goto/16 :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 585
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 589
    .end local v2    # "id":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "params":Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    .end local v8    # "resourceId":I
    :cond_3
    if-eqz v7, :cond_4

    .line 590
    invoke-interface {v6, v13, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 593
    :cond_4
    return-object v6
.end method

.method private startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 604
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 605
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 606
    .local v2, "params":Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    iput-object p1, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->constraint:Ljava/lang/CharSequence;

    .line 607
    iget-object v3, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    if-nez v3, :cond_0

    .line 608
    new-instance v3, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-direct {v3, p0, v2}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V

    iput-object v3, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    .line 610
    :cond_0
    iget-object v3, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p3}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->setLimit(I)V

    .line 611
    iget-object v3, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->filter(Ljava/lang/CharSequence;)V

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "params":Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_1
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    .line 617
    iget-object v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    invoke-virtual {v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 618
    return-void
.end method

.method private tryFetchPhoto(Lcn/nubia/ex/chips/RecipientEntry;)V
    .locals 3
    .param p1, "entry"    # Lcn/nubia/ex/chips/RecipientEntry;

    .prologue
    .line 702
    invoke-virtual {p1}, Lcn/nubia/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 703
    .local v1, "photoThumbnailUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 704
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 705
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p1, v0}, Lcn/nubia/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 716
    .end local v0    # "photoBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 713
    .restart local v0    # "photoBytes":[B
    :cond_1
    invoke-direct {p0, p1, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcn/nubia/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private updateEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    .line 698
    invoke-virtual {p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 699
    return-void
.end method


# virtual methods
.method protected fetchPhoto(Lcn/nubia/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 8
    .param p1, "entry"    # Lcn/nubia/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 750
    .local v6, "photoBytes":[B
    if-eqz v6, :cond_1

    .line 751
    invoke-virtual {p1, v6}, Lcn/nubia/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 756
    .local v7, "photoCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 758
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 760
    invoke-virtual {p1, v6}, Lcn/nubia/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 761
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 765
    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultPhotoResource()I
    .locals 1

    .prologue
    .line 908
    sget v0, Lcn/nubia/calendarcommon/R$drawable;->ic_contact_picture:I

    return v0
.end method

.method protected getDestinationId()I
    .locals 1

    .prologue
    .line 925
    const v0, 0x1020014

    return v0
.end method

.method protected getDestinationTypeId()I
    .locals 1

    .prologue
    .line 933
    const v0, 0x1020015

    return v0
.end method

.method protected getDisplayNameId()I
    .locals 1

    .prologue
    .line 916
    const v0, 0x1020016

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 811
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 816
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 900
    sget v0, Lcn/nubia/calendarcommon/R$layout;->chips_recipient_dropdown_item:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcn/nubia/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    return v0
.end method

.method protected getPhotoId()I
    .locals 1

    .prologue
    .line 941
    const v0, 0x1020006

    return v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQueryType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/ex/chips/RecipientEntry;

    .line 837
    .local v7, "entry":Lcn/nubia/ex/chips/RecipientEntry;
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "displayName":Ljava/lang/String;
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "destination":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 840
    :cond_0
    move-object v5, v1

    .line 844
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 845
    const/4 v1, 0x0

    .line 849
    :cond_1
    if-eqz p2, :cond_4

    move-object/from16 v9, p2

    .line 851
    .local v9, "itemView":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getDisplayNameId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 852
    .local v6, "displayNameView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getDestinationId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 854
    .local v4, "destinationView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getDestinationTypeId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 855
    .local v3, "destinationTypeView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getPhotoId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 856
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 858
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    :goto_1
    if-eqz v3, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mQuery:Lcn/nubia/ex/chips/Queries$Query;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 864
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->getDestinationType()I

    move-result v14

    .line 865
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->getDestinationLabel()Ljava/lang/String;

    move-result-object v15

    .line 864
    invoke-virtual {v12, v13, v14, v15}, Lcn/nubia/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 865
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "destinationType":Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    .end local v2    # "destinationType":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 871
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    if-eqz v8, :cond_3

    .line 873
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    invoke-virtual {v7}, Lcn/nubia/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v11

    .line 875
    .local v11, "photoBytes":[B
    if-eqz v11, :cond_6

    if-eqz v8, :cond_6

    .line 876
    const/4 v12, 0x0

    array-length v13, v11

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 878
    .local v10, "photo":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 889
    .end local v10    # "photo":Landroid/graphics/Bitmap;
    .end local v11    # "photoBytes":[B
    :cond_3
    :goto_2
    return-object v9

    .line 849
    .end local v3    # "destinationTypeView":Landroid/widget/TextView;
    .end local v4    # "destinationView":Landroid/widget/TextView;
    .end local v6    # "displayNameView":Landroid/widget/TextView;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "itemView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getItemLayout()I

    move-result v13

    const/4 v14, 0x0

    .line 849
    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 860
    .restart local v3    # "destinationTypeView":Landroid/widget/TextView;
    .restart local v4    # "destinationView":Landroid/widget/TextView;
    .restart local v6    # "displayNameView":Landroid/widget/TextView;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    .restart local v9    # "itemView":Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 880
    .restart local v11    # "photoBytes":[B
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->getDefaultPhotoResource()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 884
    .end local v11    # "photoBytes":[B
    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    if-eqz v8, :cond_3

    .line 886
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcn/nubia/ex/chips/RecipientEntry;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 534
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 535
    return-void
.end method
