.class final Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final GROUP_SEPARATOR:Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 64
    const-string v12, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 70
    const-string v12, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 71
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 77
    const-string v12, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d [0-2]\\d$"

    .line 78
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 79
    const-string v12, ":[0-5]\\d"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 104
    const-string v9, "(\\[\uff08\uff3b"

    .line 105
    .local v9, "openingParens":Ljava/lang/String;
    const-string v2, ")\\]\uff09\uff3d"

    .line 106
    .local v2, "closingParens":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "nonParens":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-static {v14, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "bracketPairLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 122
    const/4 v12, 0x2

    invoke-static {v14, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "leadLimit":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-static {v14, v12}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "punctuationLimit":Ljava/lang/String;
    const/16 v3, 0x13

    .line 132
    .local v3, "digitBlockLimit":I
    invoke-static {v14, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "blockLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Nd}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "digitSequence":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+\uff0b"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "leadClass":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Z}[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\\p{Nd}]*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 150
    return-void
.end method

.method constructor <init>(Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 3
    .param p1, "util"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 204
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 207
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 210
    :cond_2
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .line 211
    if-eqz p2, :cond_3

    .end local p2    # "text":Ljava/lang/CharSequence;
    :goto_0
    iput-object p2, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 212
    iput-object p3, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 213
    iput-object p4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 214
    iput-wide p5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 215
    return-void

    .line 211
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_3
    const-string p2, ""

    goto :goto_0
.end method

.method private extractInnerMatch(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .locals 12
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 352
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 354
    .local v1, "groupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 356
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "firstGroupOnly":Ljava/lang/CharSequence;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 360
    .local v3, "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_1

    .line 398
    .end local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    :cond_0
    :goto_0
    return-object v3

    .line 363
    .restart local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .restart local v3    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    :cond_1
    iget-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 365
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 367
    .local v5, "withoutFirstGroupStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "withoutFirstGroup":Ljava/lang/CharSequence;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 370
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    add-int v8, p2, v5

    invoke-direct {p0, v7, v8}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 371
    if-nez v3, :cond_0

    .line 374
    iget-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 376
    iget-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 377
    move v2, v5

    .line 378
    .local v2, "lastGroupStart":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 380
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    goto :goto_1

    .line 382
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "withoutLastGroup":Ljava/lang/CharSequence;
    sget-object v7, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 385
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    const/4 v3, 0x0

    goto :goto_0

    .line 391
    :cond_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 392
    if-nez v3, :cond_0

    .line 395
    iget-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 398
    .end local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .end local v2    # "lastGroupStart":I
    .end local v3    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .end local v4    # "withoutFirstGroup":Ljava/lang/CharSequence;
    .end local v5    # "withoutFirstGroupStart":I
    .end local v6    # "withoutLastGroup":Ljava/lang/CharSequence;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .locals 5
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 318
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v1

    .line 322
    :cond_1
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    iget-object v3, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "followingText":Ljava/lang/String;
    sget-object v3, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "rawString":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 332
    .local v1, "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    if-nez v1, :cond_0

    .line 338
    invoke-direct {p0, v2, p2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    goto :goto_0
.end method

.method private find(I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 251
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 252
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 254
    .local v3, "start":I
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    .local v0, "candidate":Ljava/lang/CharSequence;
    sget-object v4, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v4, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 261
    invoke-direct {p0, v0, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 262
    .local v1, "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_0

    .line 270
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :goto_1
    return-object v1

    .line 266
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    .restart local v1    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .restart local v3    # "start":I
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v3, v4

    .line 267
    iget-wide v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_0

    .line 270
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 2
    .param p0, "character"    # C

    .prologue
    .line 306
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLatinLetter(C)Z
    .locals 4
    .param p0, "letter"    # C

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 297
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .prologue
    .line 154
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-ge p1, p0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAndVerify(Ljava/lang/String;I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    :try_start_0
    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v4

    .line 420
    :cond_1
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v6, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v5, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 423
    if-lez p2, :cond_2

    sget-object v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 426
    .local v3, "previousChar":C
    invoke-static {v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    .end local v3    # "previousChar":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, p2, v5

    .line 431
    .local v0, "lastCharIndex":I
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 432
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 433
    .local v1, "nextChar":C
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    .end local v0    # "lastCharIndex":I
    .end local v1    # "nextChar":C
    :cond_3
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 440
    .local v2, "number":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v5, v2, p1, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 445
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 446
    invoke-virtual {v2}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 447
    new-instance v5, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    invoke-direct {v5, p2, p1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcn/nubia/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 449
    .end local v2    # "number":Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 279
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 282
    :cond_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    .line 220
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    invoke-virtual {v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 224
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 237
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    .line 238
    .local v0, "result":Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    .line 239
    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 240
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcn/nubia/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
