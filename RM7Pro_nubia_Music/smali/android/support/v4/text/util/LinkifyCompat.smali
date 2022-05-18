.class public final Landroid/support/v4/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;,
        Landroid/support/v4/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/support/v4/text/util/LinkifyCompat$1;

    invoke-direct {v0}, Landroid/support/v4/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 352
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 201
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6

    .prologue
    .line 220
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 221
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 245
    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 251
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    if-nez p1, :cond_0

    move v0, v6

    .line 145
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 105
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 106
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 111
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 115
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 118
    sget-object v2, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v6

    const-string v1, "https://"

    aput-object v1, v3, v7

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 123
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    .line 124
    sget-object v2, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v6

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 129
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 130
    invoke-static {v0, p0}, Landroid/support/v4/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 133
    :cond_5
    invoke-static {v0, p0}, Landroid/support/v4/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v0, v6

    .line 136
    goto :goto_0

    .line 139
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    .line 140
    iget-object v2, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v2, :cond_7

    .line 141
    iget-object v2, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v3, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v2, v3, v0, p0}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    :cond_8
    move v0, v7

    .line 145
    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6

    .prologue
    .line 285
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 309
    if-nez p2, :cond_0

    const-string p2, ""

    .line 310
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-ge v0, v3, :cond_2

    .line 311
    :cond_1
    sget-object p3, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 314
    :cond_2
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 315
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v0, v1

    .line 316
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 317
    aget-object v2, p3, v0

    .line 318
    add-int/lit8 v5, v0, 0x1

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_1
    aput-object v2, v4, v5

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 322
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v0, v1

    .line 324
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 326
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 329
    if-eqz p4, :cond_7

    .line 330
    invoke-interface {p4, p0, v6, v7}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 333
    :goto_3
    if-eqz v2, :cond_5

    .line 334
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, p5}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0, v6, v7, p0}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    move v0, v3

    .line 337
    goto :goto_2

    .line 341
    :cond_6
    return v0

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    if-nez p1, :cond_0

    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    .line 167
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .line 174
    :cond_2
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 176
    invoke-static {v0, p1}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 180
    goto :goto_0

    :cond_3
    move v0, v1

    .line 183
    goto :goto_0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    .prologue
    .line 405
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 407
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 408
    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 387
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 389
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 391
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    :cond_1
    new-instance v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 393
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 395
    iput-object v4, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 396
    iput v1, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 397
    iput v2, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 399
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    const/4 v0, 0x0

    .line 416
    :goto_0
    :try_start_0
    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 419
    if-gez v3, :cond_1

    .line 449
    :cond_0
    :goto_1
    return-void

    .line 423
    :cond_1
    new-instance v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 424
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 425
    add-int/2addr v5, v3

    .line 427
    add-int/2addr v3, v0

    iput v3, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 428
    add-int v3, v0, v5

    iput v3, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 429
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    add-int/2addr v0, v5

    .line 435
    :try_start_1
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 440
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 441
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    goto :goto_1

    .line 436
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    if-eqz p3, :cond_4

    .line 357
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v9, v2

    .line 362
    :goto_1
    array-length v3, p1

    if-ge v9, v3, :cond_3

    .line 363
    aget-object v3, p1, v9

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    aget-object v6, p1, v9

    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_1
    return-object v0

    .line 362
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 453
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move v1, v2

    .line 454
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 455
    new-instance v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 456
    aget-object v5, v0, v1

    iput-object v5, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 457
    aget-object v5, v0, v1

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 458
    aget-object v5, v0, v1

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 459
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    sget-object v0, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 464
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    .line 467
    :goto_1
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_5

    .line 468
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    .line 469
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    .line 472
    iget v5, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v6, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v5, v6, :cond_4

    iget v5, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v5, v6, :cond_4

    .line 473
    iget v5, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v5, v6, :cond_2

    .line 474
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    .line 481
    :goto_2
    if-eq v1, v3, :cond_4

    .line 482
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    iget-object v0, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 483
    if-eqz v0, :cond_1

    .line 484
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 486
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 488
    goto :goto_1

    .line 475
    :cond_2
    iget v5, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 476
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    goto :goto_2

    .line 477
    :cond_3
    iget v5, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v0, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int v0, v5, v0

    iget v5, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_6

    move v1, v2

    .line 478
    goto :goto_2

    .line 493
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 494
    goto :goto_1

    .line 495
    :cond_5
    return-void

    :cond_6
    move v1, v3

    goto :goto_2
.end method
