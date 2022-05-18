.class final Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/ex/chips/BaseRecipientAdapter;
    .param p2, "x1"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 305
    move-object v2, p1

    check-cast v2, Lcn/nubia/ex/chips/RecipientEntry;

    .line 306
    .local v2, "entry":Lcn/nubia/ex/chips/RecipientEntry;
    invoke-virtual {v2}, Lcn/nubia/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    .end local v1    # "emailAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "emailAddress":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    new-instance v16, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v16 .. v16}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 207
    .local v16, "results":Landroid/widget/Filter$FilterResults;
    const/4 v13, 0x0

    .line 208
    .local v13, "defaultDirectoryCursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 210
    .local v14, "directoryCursor":Landroid/database/Cursor;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v16

    .line 216
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v2}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$000(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2, v8}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$100(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 218
    if-nez v13, :cond_3

    .line 268
    :goto_1
    if-eqz v13, :cond_2

    .line 269
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_2
    if-eqz v14, :cond_0

    .line 272
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 226
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 228
    .local v4, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v6, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    new-instance v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    invoke-direct {v2, v13}, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$200(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 268
    .end local v4    # "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    .end local v5    # "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    .end local v6    # "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_4

    .line 269
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_4
    if-eqz v14, :cond_5

    .line 272
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_5
    throw v1

    .line 240
    .restart local v4    # "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;>;"
    .restart local v5    # "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    .restart local v6    # "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2, v4, v5, v6}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$300(Lcn/nubia/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 245
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/RecipientEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$000(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    move-result v1

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    sub-int v15, v1, v2

    .line 247
    .local v15, "limit":I
    if-lez v15, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$400(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v9, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v1, v14}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$500(Lcn/nubia/ex/chips/BaseRecipientAdapter;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 262
    .local v7, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :goto_3
    new-instance v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    invoke-direct/range {v2 .. v7}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 265
    const/4 v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 259
    .end local v7    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 283
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v2, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$602(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 285
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 286
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    .line 287
    .local v0, "defaultFilterResult":Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$702(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 288
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    invoke-static {v2, v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$802(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 289
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    invoke-static {v2, v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$902(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 291
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-static {v2, v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1000(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 294
    iget-object v2, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v2}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$000(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    .line 296
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 297
    .local v1, "limit":I
    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    invoke-static {v2, p1, v3, v1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1100(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 301
    .end local v0    # "defaultFilterResult":Lcn/nubia/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    .end local v1    # "limit":I
    :cond_0
    return-void
.end method
