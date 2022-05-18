.class public final Lnet/fortuna/ical4j/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String; = "\r\n"

.field public static final PARAM_QUOTE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "[:;,]|[^\\p{ASCII}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->PARAM_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Strings;->escapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->escapeNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->escapePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 205
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static escapeNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    .line 189
    const-string v0, "\r?\n"

    const-string v1, "\\\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static escapePunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p0, :cond_0

    .line 175
    const-string v0, "([,;])"

    const-string v1, "\\\\$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 177
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "aValue"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-eqz p0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\"\""

    goto :goto_0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aValue"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Strings;->unescapePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->unescapeNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 210
    const-string v0, "\\\\\\\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static unescapeNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    const-string v0, "(?<!\\\\)\\\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static unescapePunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    const-string v0, "\\\\([,;\"])"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aValue"    # Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 148
    .end local p0    # "aValue":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const-string v0, ""

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
