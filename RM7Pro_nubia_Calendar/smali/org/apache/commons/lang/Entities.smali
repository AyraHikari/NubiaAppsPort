.class Lorg/apache/commons/lang/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/Entities$BinaryEntityMap;,
        Lorg/apache/commons/lang/Entities$ArrayEntityMap;,
        Lorg/apache/commons/lang/Entities$LookupEntityMap;,
        Lorg/apache/commons/lang/Entities$TreeEntityMap;,
        Lorg/apache/commons/lang/Entities$HashEntityMap;,
        Lorg/apache/commons/lang/Entities$MapIntMap;,
        Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;,
        Lorg/apache/commons/lang/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lorg/apache/commons/lang/Entities;

.field public static final HTML40:Lorg/apache/commons/lang/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lorg/apache/commons/lang/Entities;


# instance fields
.field private final map:Lorg/apache/commons/lang/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    new-array v3, v11, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "quot"

    aput-object v5, v4, v7

    const-string v5, "34"

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "amp"

    aput-object v5, v4, v7

    const-string v5, "38"

    aput-object v5, v4, v8

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "lt"

    aput-object v5, v4, v7

    const-string v5, "60"

    aput-object v5, v4, v8

    aput-object v4, v3, v9

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "gt"

    aput-object v5, v4, v7

    const-string v5, "62"

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    sput-object v3, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 51
    new-array v3, v8, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "apos"

    aput-object v5, v4, v7

    const-string v5, "39"

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    sput-object v3, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    .line 55
    const/16 v3, 0x60

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "nbsp"

    aput-object v5, v4, v7

    const-string v5, "160"

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "iexcl"

    aput-object v5, v4, v7

    const-string v5, "161"

    aput-object v5, v4, v8

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "cent"

    aput-object v5, v4, v7

    const-string v5, "162"

    aput-object v5, v4, v8

    aput-object v4, v3, v9

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "pound"

    aput-object v5, v4, v7

    const-string v5, "163"

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "curren"

    aput-object v5, v4, v7

    const-string v5, "164"

    aput-object v5, v4, v8

    aput-object v4, v3, v11

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "yen"

    aput-object v6, v5, v7

    const-string v6, "165"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "brvbar"

    aput-object v6, v5, v7

    const-string v6, "166"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sect"

    aput-object v6, v5, v7

    const-string v6, "167"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "uml"

    aput-object v6, v5, v7

    const-string v6, "168"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "copy"

    aput-object v6, v5, v7

    const-string v6, "169"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ordf"

    aput-object v6, v5, v7

    const-string v6, "170"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "laquo"

    aput-object v6, v5, v7

    const-string v6, "171"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "not"

    aput-object v6, v5, v7

    const-string v6, "172"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "shy"

    aput-object v6, v5, v7

    const-string v6, "173"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "reg"

    aput-object v6, v5, v7

    const-string v6, "174"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "macr"

    aput-object v6, v5, v7

    const-string v6, "175"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "deg"

    aput-object v6, v5, v7

    const-string v6, "176"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "plusmn"

    aput-object v6, v5, v7

    const-string v6, "177"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sup2"

    aput-object v6, v5, v7

    const-string v6, "178"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sup3"

    aput-object v6, v5, v7

    const-string v6, "179"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "acute"

    aput-object v6, v5, v7

    const-string v6, "180"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "micro"

    aput-object v6, v5, v7

    const-string v6, "181"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x16

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "para"

    aput-object v6, v5, v7

    const-string v6, "182"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x17

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "middot"

    aput-object v6, v5, v7

    const-string v6, "183"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x18

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "cedil"

    aput-object v6, v5, v7

    const-string v6, "184"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x19

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sup1"

    aput-object v6, v5, v7

    const-string v6, "185"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ordm"

    aput-object v6, v5, v7

    const-string v6, "186"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "raquo"

    aput-object v6, v5, v7

    const-string v6, "187"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "frac14"

    aput-object v6, v5, v7

    const-string v6, "188"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "frac12"

    aput-object v6, v5, v7

    const-string v6, "189"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "frac34"

    aput-object v6, v5, v7

    const-string v6, "190"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "iquest"

    aput-object v6, v5, v7

    const-string v6, "191"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x20

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Agrave"

    aput-object v6, v5, v7

    const-string v6, "192"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x21

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Aacute"

    aput-object v6, v5, v7

    const-string v6, "193"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x22

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Acirc"

    aput-object v6, v5, v7

    const-string v6, "194"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x23

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Atilde"

    aput-object v6, v5, v7

    const-string v6, "195"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x24

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Auml"

    aput-object v6, v5, v7

    const-string v6, "196"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x25

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Aring"

    aput-object v6, v5, v7

    const-string v6, "197"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x26

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "AElig"

    aput-object v6, v5, v7

    const-string v6, "198"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x27

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ccedil"

    aput-object v6, v5, v7

    const-string v6, "199"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x28

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Egrave"

    aput-object v6, v5, v7

    const-string v6, "200"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x29

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Eacute"

    aput-object v6, v5, v7

    const-string v6, "201"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ecirc"

    aput-object v6, v5, v7

    const-string v6, "202"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Euml"

    aput-object v6, v5, v7

    const-string v6, "203"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Igrave"

    aput-object v6, v5, v7

    const-string v6, "204"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Iacute"

    aput-object v6, v5, v7

    const-string v6, "205"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Icirc"

    aput-object v6, v5, v7

    const-string v6, "206"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Iuml"

    aput-object v6, v5, v7

    const-string v6, "207"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x30

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ETH"

    aput-object v6, v5, v7

    const-string v6, "208"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x31

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ntilde"

    aput-object v6, v5, v7

    const-string v6, "209"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x32

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ograve"

    aput-object v6, v5, v7

    const-string v6, "210"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x33

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Oacute"

    aput-object v6, v5, v7

    const-string v6, "211"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x34

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ocirc"

    aput-object v6, v5, v7

    const-string v6, "212"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x35

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Otilde"

    aput-object v6, v5, v7

    const-string v6, "213"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x36

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ouml"

    aput-object v6, v5, v7

    const-string v6, "214"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x37

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "times"

    aput-object v6, v5, v7

    const-string v6, "215"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x38

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Oslash"

    aput-object v6, v5, v7

    const-string v6, "216"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x39

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ugrave"

    aput-object v6, v5, v7

    const-string v6, "217"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Uacute"

    aput-object v6, v5, v7

    const-string v6, "218"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Ucirc"

    aput-object v6, v5, v7

    const-string v6, "219"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Uuml"

    aput-object v6, v5, v7

    const-string v6, "220"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Yacute"

    aput-object v6, v5, v7

    const-string v6, "221"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "THORN"

    aput-object v6, v5, v7

    const-string v6, "222"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "szlig"

    aput-object v6, v5, v7

    const-string v6, "223"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x40

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "agrave"

    aput-object v6, v5, v7

    const-string v6, "224"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x41

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "aacute"

    aput-object v6, v5, v7

    const-string v6, "225"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x42

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "acirc"

    aput-object v6, v5, v7

    const-string v6, "226"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x43

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "atilde"

    aput-object v6, v5, v7

    const-string v6, "227"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x44

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "auml"

    aput-object v6, v5, v7

    const-string v6, "228"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x45

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "aring"

    aput-object v6, v5, v7

    const-string v6, "229"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x46

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "aelig"

    aput-object v6, v5, v7

    const-string v6, "230"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x47

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ccedil"

    aput-object v6, v5, v7

    const-string v6, "231"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x48

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "egrave"

    aput-object v6, v5, v7

    const-string v6, "232"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x49

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "eacute"

    aput-object v6, v5, v7

    const-string v6, "233"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ecirc"

    aput-object v6, v5, v7

    const-string v6, "234"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "euml"

    aput-object v6, v5, v7

    const-string v6, "235"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "igrave"

    aput-object v6, v5, v7

    const-string v6, "236"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "iacute"

    aput-object v6, v5, v7

    const-string v6, "237"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "icirc"

    aput-object v6, v5, v7

    const-string v6, "238"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "iuml"

    aput-object v6, v5, v7

    const-string v6, "239"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x50

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "eth"

    aput-object v6, v5, v7

    const-string v6, "240"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x51

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ntilde"

    aput-object v6, v5, v7

    const-string v6, "241"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x52

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ograve"

    aput-object v6, v5, v7

    const-string v6, "242"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x53

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "oacute"

    aput-object v6, v5, v7

    const-string v6, "243"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x54

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ocirc"

    aput-object v6, v5, v7

    const-string v6, "244"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x55

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "otilde"

    aput-object v6, v5, v7

    const-string v6, "245"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x56

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ouml"

    aput-object v6, v5, v7

    const-string v6, "246"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x57

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "divide"

    aput-object v6, v5, v7

    const-string v6, "247"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x58

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "oslash"

    aput-object v6, v5, v7

    const-string v6, "248"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x59

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ugrave"

    aput-object v6, v5, v7

    const-string v6, "249"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "uacute"

    aput-object v6, v5, v7

    const-string v6, "250"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ucirc"

    aput-object v6, v5, v7

    const-string v6, "251"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "uuml"

    aput-object v6, v5, v7

    const-string v6, "252"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "yacute"

    aput-object v6, v5, v7

    const-string v6, "253"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "thorn"

    aput-object v6, v5, v7

    const-string v6, "254"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "yuml"

    aput-object v6, v5, v7

    const-string v6, "255"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    sput-object v3, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    .line 155
    const/16 v3, 0x97

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "fnof"

    aput-object v5, v4, v7

    const-string v5, "402"

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Alpha"

    aput-object v5, v4, v7

    const-string v5, "913"

    aput-object v5, v4, v8

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Beta"

    aput-object v5, v4, v7

    const-string v5, "914"

    aput-object v5, v4, v8

    aput-object v4, v3, v9

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Gamma"

    aput-object v5, v4, v7

    const-string v5, "915"

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Delta"

    aput-object v5, v4, v7

    const-string v5, "916"

    aput-object v5, v4, v8

    aput-object v4, v3, v11

    const/4 v4, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Epsilon"

    aput-object v6, v5, v7

    const-string v6, "917"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Zeta"

    aput-object v6, v5, v7

    const-string v6, "918"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Eta"

    aput-object v6, v5, v7

    const-string v6, "919"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Theta"

    aput-object v6, v5, v7

    const-string v6, "920"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Iota"

    aput-object v6, v5, v7

    const-string v6, "921"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Kappa"

    aput-object v6, v5, v7

    const-string v6, "922"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Lambda"

    aput-object v6, v5, v7

    const-string v6, "923"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Mu"

    aput-object v6, v5, v7

    const-string v6, "924"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Nu"

    aput-object v6, v5, v7

    const-string v6, "925"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Xi"

    aput-object v6, v5, v7

    const-string v6, "926"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Omicron"

    aput-object v6, v5, v7

    const-string v6, "927"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Pi"

    aput-object v6, v5, v7

    const-string v6, "928"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Rho"

    aput-object v6, v5, v7

    const-string v6, "929"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Sigma"

    aput-object v6, v5, v7

    const-string v6, "931"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Tau"

    aput-object v6, v5, v7

    const-string v6, "932"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Upsilon"

    aput-object v6, v5, v7

    const-string v6, "933"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Phi"

    aput-object v6, v5, v7

    const-string v6, "934"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x16

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Chi"

    aput-object v6, v5, v7

    const-string v6, "935"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x17

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Psi"

    aput-object v6, v5, v7

    const-string v6, "936"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x18

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Omega"

    aput-object v6, v5, v7

    const-string v6, "937"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x19

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "alpha"

    aput-object v6, v5, v7

    const-string v6, "945"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "beta"

    aput-object v6, v5, v7

    const-string v6, "946"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "gamma"

    aput-object v6, v5, v7

    const-string v6, "947"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "delta"

    aput-object v6, v5, v7

    const-string v6, "948"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "epsilon"

    aput-object v6, v5, v7

    const-string v6, "949"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "zeta"

    aput-object v6, v5, v7

    const-string v6, "950"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "eta"

    aput-object v6, v5, v7

    const-string v6, "951"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x20

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "theta"

    aput-object v6, v5, v7

    const-string v6, "952"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x21

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "iota"

    aput-object v6, v5, v7

    const-string v6, "953"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x22

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "kappa"

    aput-object v6, v5, v7

    const-string v6, "954"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x23

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lambda"

    aput-object v6, v5, v7

    const-string v6, "955"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x24

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "mu"

    aput-object v6, v5, v7

    const-string v6, "956"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x25

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "nu"

    aput-object v6, v5, v7

    const-string v6, "957"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x26

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "xi"

    aput-object v6, v5, v7

    const-string v6, "958"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x27

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "omicron"

    aput-object v6, v5, v7

    const-string v6, "959"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x28

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "pi"

    aput-object v6, v5, v7

    const-string v6, "960"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x29

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rho"

    aput-object v6, v5, v7

    const-string v6, "961"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sigmaf"

    aput-object v6, v5, v7

    const-string v6, "962"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sigma"

    aput-object v6, v5, v7

    const-string v6, "963"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "tau"

    aput-object v6, v5, v7

    const-string v6, "964"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "upsilon"

    aput-object v6, v5, v7

    const-string v6, "965"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "phi"

    aput-object v6, v5, v7

    const-string v6, "966"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "chi"

    aput-object v6, v5, v7

    const-string v6, "967"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x30

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "psi"

    aput-object v6, v5, v7

    const-string v6, "968"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x31

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "omega"

    aput-object v6, v5, v7

    const-string v6, "969"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x32

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "thetasym"

    aput-object v6, v5, v7

    const-string v6, "977"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x33

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "upsih"

    aput-object v6, v5, v7

    const-string v6, "978"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x34

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "piv"

    aput-object v6, v5, v7

    const-string v6, "982"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x35

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "bull"

    aput-object v6, v5, v7

    const-string v6, "8226"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x36

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "hellip"

    aput-object v6, v5, v7

    const-string v6, "8230"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x37

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "prime"

    aput-object v6, v5, v7

    const-string v6, "8242"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x38

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Prime"

    aput-object v6, v5, v7

    const-string v6, "8243"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x39

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "oline"

    aput-object v6, v5, v7

    const-string v6, "8254"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "frasl"

    aput-object v6, v5, v7

    const-string v6, "8260"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "weierp"

    aput-object v6, v5, v7

    const-string v6, "8472"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "image"

    aput-object v6, v5, v7

    const-string v6, "8465"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "real"

    aput-object v6, v5, v7

    const-string v6, "8476"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "trade"

    aput-object v6, v5, v7

    const-string v6, "8482"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "alefsym"

    aput-object v6, v5, v7

    const-string v6, "8501"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x40

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "larr"

    aput-object v6, v5, v7

    const-string v6, "8592"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x41

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "uarr"

    aput-object v6, v5, v7

    const-string v6, "8593"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x42

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rarr"

    aput-object v6, v5, v7

    const-string v6, "8594"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x43

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "darr"

    aput-object v6, v5, v7

    const-string v6, "8595"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x44

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "harr"

    aput-object v6, v5, v7

    const-string v6, "8596"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x45

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "crarr"

    aput-object v6, v5, v7

    const-string v6, "8629"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x46

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lArr"

    aput-object v6, v5, v7

    const-string v6, "8656"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x47

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "uArr"

    aput-object v6, v5, v7

    const-string v6, "8657"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x48

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rArr"

    aput-object v6, v5, v7

    const-string v6, "8658"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x49

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "dArr"

    aput-object v6, v5, v7

    const-string v6, "8659"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "hArr"

    aput-object v6, v5, v7

    const-string v6, "8660"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "forall"

    aput-object v6, v5, v7

    const-string v6, "8704"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "part"

    aput-object v6, v5, v7

    const-string v6, "8706"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "exist"

    aput-object v6, v5, v7

    const-string v6, "8707"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "empty"

    aput-object v6, v5, v7

    const-string v6, "8709"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "nabla"

    aput-object v6, v5, v7

    const-string v6, "8711"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x50

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "isin"

    aput-object v6, v5, v7

    const-string v6, "8712"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x51

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "notin"

    aput-object v6, v5, v7

    const-string v6, "8713"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x52

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ni"

    aput-object v6, v5, v7

    const-string v6, "8715"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x53

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "prod"

    aput-object v6, v5, v7

    const-string v6, "8719"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x54

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sum"

    aput-object v6, v5, v7

    const-string v6, "8721"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x55

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "minus"

    aput-object v6, v5, v7

    const-string v6, "8722"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x56

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lowast"

    aput-object v6, v5, v7

    const-string v6, "8727"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x57

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "radic"

    aput-object v6, v5, v7

    const-string v6, "8730"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x58

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "prop"

    aput-object v6, v5, v7

    const-string v6, "8733"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x59

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "infin"

    aput-object v6, v5, v7

    const-string v6, "8734"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ang"

    aput-object v6, v5, v7

    const-string v6, "8736"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "and"

    aput-object v6, v5, v7

    const-string v6, "8743"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "or"

    aput-object v6, v5, v7

    const-string v6, "8744"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "cap"

    aput-object v6, v5, v7

    const-string v6, "8745"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "cup"

    aput-object v6, v5, v7

    const-string v6, "8746"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "int"

    aput-object v6, v5, v7

    const-string v6, "8747"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x60

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "there4"

    aput-object v6, v5, v7

    const-string v6, "8756"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x61

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sim"

    aput-object v6, v5, v7

    const-string v6, "8764"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x62

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "cong"

    aput-object v6, v5, v7

    const-string v6, "8773"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x63

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "asymp"

    aput-object v6, v5, v7

    const-string v6, "8776"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x64

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ne"

    aput-object v6, v5, v7

    const-string v6, "8800"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x65

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "equiv"

    aput-object v6, v5, v7

    const-string v6, "8801"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x66

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "le"

    aput-object v6, v5, v7

    const-string v6, "8804"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x67

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ge"

    aput-object v6, v5, v7

    const-string v6, "8805"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x68

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sub"

    aput-object v6, v5, v7

    const-string v6, "8834"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x69

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sup"

    aput-object v6, v5, v7

    const-string v6, "8835"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sube"

    aput-object v6, v5, v7

    const-string v6, "8838"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "supe"

    aput-object v6, v5, v7

    const-string v6, "8839"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "oplus"

    aput-object v6, v5, v7

    const-string v6, "8853"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "otimes"

    aput-object v6, v5, v7

    const-string v6, "8855"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "perp"

    aput-object v6, v5, v7

    const-string v6, "8869"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sdot"

    aput-object v6, v5, v7

    const-string v6, "8901"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x70

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lceil"

    aput-object v6, v5, v7

    const-string v6, "8968"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x71

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rceil"

    aput-object v6, v5, v7

    const-string v6, "8969"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x72

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lfloor"

    aput-object v6, v5, v7

    const-string v6, "8970"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x73

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rfloor"

    aput-object v6, v5, v7

    const-string v6, "8971"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x74

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lang"

    aput-object v6, v5, v7

    const-string v6, "9001"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x75

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rang"

    aput-object v6, v5, v7

    const-string v6, "9002"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x76

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "loz"

    aput-object v6, v5, v7

    const-string v6, "9674"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x77

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "spades"

    aput-object v6, v5, v7

    const-string v6, "9824"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x78

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "clubs"

    aput-object v6, v5, v7

    const-string v6, "9827"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x79

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "hearts"

    aput-object v6, v5, v7

    const-string v6, "9829"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "diams"

    aput-object v6, v5, v7

    const-string v6, "9830"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "OElig"

    aput-object v6, v5, v7

    const-string v6, "338"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "oelig"

    aput-object v6, v5, v7

    const-string v6, "339"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Scaron"

    aput-object v6, v5, v7

    const-string v6, "352"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "scaron"

    aput-object v6, v5, v7

    const-string v6, "353"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Yuml"

    aput-object v6, v5, v7

    const-string v6, "376"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x80

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "circ"

    aput-object v6, v5, v7

    const-string v6, "710"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x81

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "tilde"

    aput-object v6, v5, v7

    const-string v6, "732"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x82

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ensp"

    aput-object v6, v5, v7

    const-string v6, "8194"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x83

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "emsp"

    aput-object v6, v5, v7

    const-string v6, "8195"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x84

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "thinsp"

    aput-object v6, v5, v7

    const-string v6, "8201"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x85

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "zwnj"

    aput-object v6, v5, v7

    const-string v6, "8204"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x86

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "zwj"

    aput-object v6, v5, v7

    const-string v6, "8205"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x87

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lrm"

    aput-object v6, v5, v7

    const-string v6, "8206"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x88

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rlm"

    aput-object v6, v5, v7

    const-string v6, "8207"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x89

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ndash"

    aput-object v6, v5, v7

    const-string v6, "8211"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "mdash"

    aput-object v6, v5, v7

    const-string v6, "8212"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lsquo"

    aput-object v6, v5, v7

    const-string v6, "8216"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rsquo"

    aput-object v6, v5, v7

    const-string v6, "8217"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "sbquo"

    aput-object v6, v5, v7

    const-string v6, "8218"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "ldquo"

    aput-object v6, v5, v7

    const-string v6, "8220"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rdquo"

    aput-object v6, v5, v7

    const-string v6, "8221"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x90

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "bdquo"

    aput-object v6, v5, v7

    const-string v6, "8222"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x91

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "dagger"

    aput-object v6, v5, v7

    const-string v6, "8224"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x92

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Dagger"

    aput-object v6, v5, v7

    const-string v6, "8225"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x93

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "permil"

    aput-object v6, v5, v7

    const-string v6, "8240"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x94

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "lsaquo"

    aput-object v6, v5, v7

    const-string v6, "8249"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x95

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "rsaquo"

    aput-object v6, v5, v7

    const-string v6, "8250"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x96

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "euro"

    aput-object v6, v5, v7

    const-string v6, "8364"

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    sput-object v3, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    .line 374
    new-instance v2, Lorg/apache/commons/lang/Entities;

    invoke-direct {v2}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 375
    .local v2, "xml":Lorg/apache/commons/lang/Entities;
    sget-object v3, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 376
    sget-object v3, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 377
    sput-object v2, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    .line 381
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 382
    .local v0, "html32":Lorg/apache/commons/lang/Entities;
    sget-object v3, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 383
    sget-object v3, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 384
    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    .line 388
    new-instance v1, Lorg/apache/commons/lang/Entities;

    invoke-direct {v1}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 389
    .local v1, "html40":Lorg/apache/commons/lang/Entities;
    invoke-static {v1}, Lorg/apache/commons/lang/Entities;->fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V

    .line 390
    sput-object v1, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    .line 391
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    new-instance v0, Lorg/apache/commons/lang/Entities$LookupEntityMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    .line 750
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/lang/Entities$EntityMap;)V
    .locals 0
    .param p1, "emap"    # Lorg/apache/commons/lang/Entities$EntityMap;

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    .line 759
    return-void
.end method

.method private createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 917
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    return-object v0
.end method

.method private doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 16
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "firstAmp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 963
    .local v11, "len":I
    move/from16 v9, p3

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 964
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 965
    .local v4, "c":C
    const/16 v14, 0x26

    if-ne v4, v14, :cond_5

    .line 966
    add-int/lit8 v12, v9, 0x1

    .line 967
    .local v12, "nextIdx":I
    const/16 v14, 0x3b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 968
    .local v13, "semiColonIdx":I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 963
    .end local v12    # "nextIdx":I
    .end local v13    # "semiColonIdx":I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 972
    .restart local v12    # "nextIdx":I
    .restart local v13    # "semiColonIdx":I
    :cond_0
    const/16 v14, 0x26

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 973
    .local v3, "amphersandIdx":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_1

    if-ge v3, v13, :cond_1

    .line 975
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 978
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 979
    .local v6, "entityContent":Ljava/lang/String;
    const/4 v8, -0x1

    .line 980
    .local v8, "entityValue":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 981
    .local v7, "entityContentLen":I
    if-lez v7, :cond_2

    .line 982
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x23

    if-ne v14, v15, :cond_3

    .line 984
    const/4 v14, 0x1

    if-le v7, v14, :cond_2

    .line 985
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 987
    .local v10, "isHexChar":C
    sparse-switch v10, :sswitch_data_0

    .line 994
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 997
    :goto_2
    const v14, 0xffff

    if-le v8, v14, :cond_2

    .line 998
    const/4 v8, -0x1

    .line 1009
    .end local v10    # "isHexChar":C
    :cond_2
    :goto_3
    const/4 v14, -0x1

    if-ne v8, v14, :cond_4

    .line 1010
    const/16 v14, 0x26

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(I)V

    .line 1011
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1012
    const/16 v14, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(I)V

    .line 1016
    :goto_4
    move v9, v13

    .line 1017
    goto :goto_1

    .line 990
    .restart local v10    # "isHexChar":C
    :sswitch_0
    const/4 v14, 0x2

    :try_start_1
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 991
    goto :goto_2

    .line 1000
    :catch_0
    move-exception v5

    .line 1001
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v8, -0x1

    goto :goto_3

    .line 1005
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "isHexChar":C
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/commons/lang/Entities;->entityValue(Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    .line 1014
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    .line 1018
    .end local v3    # "amphersandIdx":I
    .end local v6    # "entityContent":Ljava/lang/String;
    .end local v7    # "entityContentLen":I
    .end local v8    # "entityValue":I
    .end local v12    # "nextIdx":I
    .end local v13    # "semiColonIdx":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 1021
    .end local v4    # "c":C
    :cond_6
    return-void

    .line 987
    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method static fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V
    .locals 1
    .param p0, "entities"    # Lorg/apache/commons/lang/Entities;

    .prologue
    .line 402
    sget-object v0, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 403
    sget-object v0, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 404
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 4
    .param p1, "entityArray"    # [[Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 771
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/Entities;->addEntity(Ljava/lang/String;I)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/Entities$EntityMap;->add(Ljava/lang/String;I)V

    .line 787
    return-void
.end method

.method public entityName(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v1

    .line 832
    .local v1, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 833
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public escape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3b

    .line 859
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 860
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 861
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 862
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->entityName(I)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "entityName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 864
    const/16 v4, 0x7f

    if-le v0, v4, :cond_0

    .line 865
    const-string v4, "&#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 866
    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 860
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 872
    :cond_1
    const/16 v4, 0x26

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 873
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 877
    .end local v0    # "c":C
    .end local v1    # "entityName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 894
    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 895
    .local v1, "firstAmp":I
    if-gez v1, :cond_0

    .line 906
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 898
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v2

    .line 900
    .local v2, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-direct {p0, v2, p1, v1}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public unescape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 939
    .local v0, "firstAmp":I
    if-gez v0, :cond_0

    .line 940
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V

    goto :goto_0
.end method
