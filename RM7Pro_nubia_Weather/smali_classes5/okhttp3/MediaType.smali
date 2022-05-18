.class public final Lokhttp3/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 51
    sget-object v9, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 52
    .local v7, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v8

    .line 53
    :cond_1
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "subtype":Ljava/lang/String;
    const/4 v0, 0x0

    .line 57
    .local v0, "charset":Ljava/lang/String;
    sget-object v9, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 58
    .local v3, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .local v4, "s":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v4, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 60
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v9, "charset"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 58
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 65
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "charsetParameter":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 68
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple different charsets: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 65
    .end local v1    # "charsetParameter":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x3

    .line 66
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 70
    .restart local v1    # "charsetParameter":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 73
    .end local v1    # "charsetParameter":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    new-instance v8, Lokhttp3/MediaType;

    invoke-direct {v8, p0, v6, v5, v0}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/nio/charset/Charset;
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 115
    instance-of v0, p1, Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/MediaType;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
