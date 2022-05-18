.class public Lorg/apache/commons/lang/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v0, Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    .line 94
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 95
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 96
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 97
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 98
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 99
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 101
    new-instance v0, Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    .line 102
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 103
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 104
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 105
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 106
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 107
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 303
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang/text/StrMatcher;)V

    .line 316
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 317
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "input"    # [C

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 120
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 330
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 331
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 344
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 345
    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([CC)V

    .line 388
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 389
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 358
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 359
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([C)V

    .line 372
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 373
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>([CLorg/apache/commons/lang/text/StrMatcher;)V

    .line 404
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 405
    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "tok"    # Ljava/lang/String;

    .prologue
    .line 675
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 676
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    const/4 p2, 0x0

    .line 683
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTokenized()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    if-nez v1, :cond_1

    .line 618
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 619
    .local v0, "split":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 625
    .end local v0    # "split":Ljava/util/List;
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    array-length v2, v2

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 622
    .restart local v0    # "split":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 166
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 167
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .prologue
    .line 180
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 181
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 182
    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lorg/apache/commons/lang/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 216
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 217
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .prologue
    .line 228
    invoke-static {}, Lorg/apache/commons/lang/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    .line 229
    .local v0, "tok":Lorg/apache/commons/lang/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang/text/StrTokenizer;

    .line 230
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "quoteStart"    # I
    .param p5, "quoteLen"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 848
    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_1

    .line 849
    :cond_0
    const/4 v1, 0x0

    .line 852
    :goto_1
    return v1

    .line 847
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private readNextToken([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;)I
    .locals 22
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p5, "tokens"    # Ljava/util/List;

    .prologue
    .line 700
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 704
    .local v21, "removeLen":I
    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_1

    .line 713
    .end local v21    # "removeLen":I
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    .line 714
    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 715
    const/4 v4, -0x1

    .line 730
    :goto_1
    return v4

    .line 709
    .restart local v21    # "removeLen":I
    :cond_1
    add-int p2, p2, v21

    .line 710
    goto :goto_0

    .line 719
    .end local v21    # "removeLen":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    .line 720
    .local v20, "delimLen":I
    if-lez v20, :cond_3

    .line 721
    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 722
    add-int v4, p2, v20

    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    .line 727
    .local v11, "quoteLen":I
    if-lez v11, :cond_4

    .line 728
    add-int v6, p2, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/lang/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_1

    .line 730
    :cond_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Lorg/apache/commons/lang/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_1
.end method

.method private readWithQuotes([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;II)I
    .locals 18
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p5, "tokens"    # Ljava/util/List;
    .param p6, "quoteStart"    # I
    .param p7, "quoteLen"    # I

    .prologue
    .line 752
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->clear()Lorg/apache/commons/lang/text/StrBuilder;

    .line 753
    move/from16 v5, p2

    .line 754
    .local v5, "pos":I
    if-lez p7, :cond_0

    const/4 v15, 0x1

    .line 755
    .local v15, "quoting":Z
    :goto_0
    const/16 v16, 0x0

    .line 757
    .local v16, "trimStart":I
    :goto_1
    move/from16 v0, p3

    if-ge v5, v0, :cond_8

    .line 761
    if-eqz v15, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    .line 768
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    add-int v8, v5, p7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 771
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 772
    mul-int/lit8 v3, p7, 0x2

    add-int/2addr v5, v3

    .line 773
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v16

    .line 774
    goto :goto_1

    .line 754
    .end local v15    # "quoting":Z
    .end local v16    # "trimStart":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 778
    .restart local v15    # "quoting":Z
    .restart local v16    # "trimStart":I
    :cond_1
    const/4 v15, 0x0

    .line 779
    add-int v5, v5, p7

    .line 780
    goto :goto_1

    .line 784
    :cond_2
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .local v14, "pos":I
    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 785
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v16

    move v5, v14

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v12

    .line 792
    .local v12, "delimLen":I
    if-lez v12, :cond_4

    .line 794
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 795
    add-int v3, v5, v12

    .line 832
    .end local v12    # "delimLen":I
    :goto_2
    return v3

    .line 799
    .restart local v12    # "delimLen":I
    :cond_4
    if-lez p7, :cond_5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    .line 800
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/lang/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 801
    const/4 v15, 0x1

    .line 802
    add-int v5, v5, p7

    .line 803
    goto/16 :goto_1

    .line 808
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v13

    .line 809
    .local v13, "ignoredLen":I
    if-lez v13, :cond_6

    .line 810
    add-int/2addr v5, v13

    .line 811
    goto/16 :goto_1

    .line 817
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    .line 818
    .local v17, "trimmedLen":I
    if-lez v17, :cond_7

    .line 819
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 820
    add-int v5, v5, v17

    .line 821
    goto/16 :goto_1

    .line 825
    :cond_7
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 826
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v16

    move v5, v14

    .line 827
    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    goto/16 :goto_1

    .line 831
    .end local v12    # "delimLen":I
    .end local v13    # "ignoredLen":I
    .end local v17    # "trimmedLen":I
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 832
    const/4 v3, -0x1

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 606
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1091
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->cloneReset()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1093
    :goto_0
    return-object v1

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cloneReset()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrTokenizer;

    .line 1107
    .local v0, "cloned":Lorg/apache/commons/lang/text/StrTokenizer;
    iget-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 1110
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 1111
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 452
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 3

    .prologue
    .line 461
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    .local v1, "list":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 464
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-object v1
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 525
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 526
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 558
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 539
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 570
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    .line 442
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 588
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokenPos:I

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 479
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 492
    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 497
    :goto_0
    return-object p0

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public reset([C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "input"    # [C

    .prologue
    .line 512
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->reset()Lorg/apache/commons/lang/text/StrTokenizer;

    .line 513
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->chars:[C

    .line 514
    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # C

    .prologue
    .line 890
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 880
    :goto_0
    return-object p0

    .line 878
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    goto :goto_0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 900
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "emptyAsNull"    # Z

    .prologue
    .line 1041
    iput-boolean p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->emptyAsNull:Z

    .line 1042
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "ignoreEmptyTokens"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 1065
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "ignored"    # C

    .prologue
    .line 988
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "ignored"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 972
    if-eqz p1, :cond_0

    .line 973
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 975
    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1
    .param p1, "quote"    # C

    .prologue
    .line 944
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "quote"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 928
    if-eqz p1, :cond_0

    .line 929
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 931
    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 0
    .param p1, "trimmer"    # Lorg/apache/commons/lang/text/StrMatcher;

    .prologue
    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 1019
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->checkTokenized()V

    .line 416
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1122
    const-string v0, "StrTokenizer[not tokenized yet]"

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 648
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 649
    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 665
    :cond_1
    return-object v5

    .line 651
    :cond_2
    new-instance v4, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 652
    .local v4, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v5, "tokens":Ljava/util/List;
    move v2, p2

    .line 656
    .local v2, "pos":I
    :cond_3
    :goto_0
    if-ltz v2, :cond_1

    if-ge v2, p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 658
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/lang/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    .line 661
    if-lt v2, p3, :cond_3

    .line 662
    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/lang/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
