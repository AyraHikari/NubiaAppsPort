.class public Lcn/nubia/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final GEO_CACHE_FILE:Ljava/lang/String; = "rev_geocoding"

.field private static final GEO_CACHE_MAX_BYTES:I = 0x7d000

.field private static final GEO_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final GEO_CACHE_VERSION:I = 0x0

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcn/nubia/gallery3d/common/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    .line 78
    iput-object v0, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    .line 81
    iput-object p1, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    .line 83
    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcn/nubia/gallery3d/common/BlobCache;

    const-string v0, "connectivity"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "null"

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "null"

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 421
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeAddress(Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 92
    iget-wide v1, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 93
    iget-wide v3, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 94
    iget-wide v7, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 95
    iget-wide v9, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 96
    iget-wide v11, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iget-wide v13, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    iget-wide v13, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v15, v1

    iget-wide v1, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    sub-double/2addr v13, v1

    .line 97
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v11, v1

    if-gez v1, :cond_0

    .line 98
    iget-wide v1, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 99
    iget-wide v3, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 100
    iget-wide v7, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 101
    iget-wide v9, v0, Lcn/nubia/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v11, v1

    move-wide v13, v3

    move-wide v15, v7

    move-wide/from16 v17, v9

    goto :goto_0

    :cond_0
    move-wide v13, v3

    move-wide/from16 v17, v9

    move-wide v11, v15

    move-wide v15, v7

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v7

    move-wide v1, v15

    move-wide/from16 v3, v17

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    if-nez v7, :cond_1

    move-object v7, v0

    :cond_1
    if-nez v0, :cond_2

    move-object v8, v7

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    if-eqz v7, :cond_26

    if-nez v8, :cond_3

    goto/16 :goto_11

    .line 115
    :cond_3
    iget-object v0, v6, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v1, "location"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 118
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 119
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :cond_6
    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    const-string v5, ""

    if-eqz v3, :cond_8

    .line 130
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v9, v5

    move/from16 v5, v20

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    if-nez v0, :cond_7

    .line 132
    sget-object v0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto :goto_5

    .line 134
    :cond_7
    sput-object v0, Lcn/nubia/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    :goto_5
    if-eqz v0, :cond_9

    .line 136
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 137
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 139
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v9, v5

    :cond_9
    move-object v0, v9

    move-object v5, v0

    :goto_6
    move-object/from16 v1, v19

    .line 144
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v21, v15

    .line 148
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v23, v13

    .line 149
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 151
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-wide/from16 v25, v11

    const-string v11, " - "

    const-string v12, " "

    if-nez v14, :cond_b

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_7

    :cond_a
    move-object v5, v13

    goto/16 :goto_b

    .line 153
    :cond_b
    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_d

    .line 157
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_c
    move-object v3, v10

    :cond_d
    :goto_8
    const/4 v10, 0x0

    goto :goto_a

    .line 166
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_10

    .line 168
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_f
    move-object v2, v4

    :cond_10
    :goto_9
    move-object v4, v10

    move-object v15, v13

    const/4 v10, 0x0

    move-object/from16 v29, v3

    move-object v3, v2

    move-object/from16 v2, v29

    .line 176
    :goto_a
    invoke-virtual {v7, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "null"

    if-eqz v10, :cond_12

    .line 177
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_11
    return-object v10

    .line 185
    :cond_12
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 186
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    return-object v3

    :cond_13
    move-object v3, v2

    move-object v10, v4

    move-object v5, v15

    .line 192
    :goto_b
    invoke-direct {v6, v2, v3}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ", "

    if-eqz v13, :cond_16

    .line 193
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    if-eqz v4, :cond_15

    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 197
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 200
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_15
    :goto_c
    return-object v13

    .line 208
    :cond_16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 209
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object v2, v3

    .line 212
    :cond_17
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object v3, v2

    .line 215
    :cond_18
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 219
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_1a
    const/4 v0, 0x1

    new-array v2, v0, [F

    move-object v3, v11

    move-object v13, v12

    move-wide/from16 v11, v25

    move-object/from16 v27, v13

    move-wide/from16 v13, v23

    move-object/from16 v28, v15

    move-wide/from16 v15, v21

    move-object/from16 v19, v2

    .line 228
    invoke-static/range {v11 .. v19}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v11, 0x0

    .line 230
    aget v2, v2, v11

    float-to-double v11, v2

    invoke-static {v11, v12}, Lcn/nubia/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v11

    double-to-int v2, v11

    const/16 v11, 0x14

    if-ge v2, v11, :cond_1c

    .line 234
    invoke-direct {v6, v7, v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    return-object v2

    .line 238
    :cond_1b
    invoke-direct {v6, v8, v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    .line 245
    :cond_1c
    invoke-direct {v6, v4, v10}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 246
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v15, v28

    .line 248
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v15, :cond_1d

    .line 249
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0

    :cond_1e
    move-object/from16 v15, v28

    .line 257
    invoke-direct {v6, v15, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 258
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    .line 262
    :cond_1f
    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v8}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_20

    move-object v0, v15

    :cond_20
    if-nez v1, :cond_21

    move-object v1, v5

    :cond_21
    if-eqz v0, :cond_25

    if-nez v1, :cond_22

    goto :goto_10

    .line 270
    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-gt v2, v4, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_23

    goto :goto_e

    .line 273
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 271
    :cond_24
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_25
    :goto_10
    const/4 v0, 0x0

    return-object v0

    :cond_26
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 15

    move-object v7, p0

    const-wide v0, 0x4056800000000000L    # 90.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double v0, p3, v0

    add-double/2addr v2, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v0

    double-to-long v0, v2

    const/4 v14, 0x0

    if-eqz p5, :cond_0

    .line 314
    :try_start_0
    iget-object v2, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v2, v0, v1}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v14

    .line 317
    :goto_0
    iget-object v3, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 318
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 357
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    .line 358
    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    .line 364
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 366
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 368
    :cond_3
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v14

    .line 371
    :goto_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 372
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v6, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 373
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 402
    :try_start_1
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_5

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 405
    :cond_5
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_6

    .line 406
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v14

    .line 375
    :cond_7
    :try_start_2
    new-instance v2, Landroid/location/Address;

    invoke-direct {v2, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    :try_start_3
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 379
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    :goto_3
    if-ge v4, v0, :cond_8

    .line 381
    iget-object v1, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 383
    :cond_8
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 384
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 385
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 386
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 388
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 389
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 390
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 391
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 392
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 393
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    .line 394
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 395
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :cond_9
    :goto_4
    if-eqz v3, :cond_10

    .line 319
    :try_start_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_9

    .line 323
    :cond_a
    iget-object v8, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v13, 0x1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 325
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    .line 328
    invoke-virtual {v2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 329
    iget-object v6, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 330
    iget-object v6, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 331
    iget-object v6, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    iget-object v5, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    .line 334
    iget-object v6, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_5
    if-ge v4, v5, :cond_b

    .line 336
    iget-object v6, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 338
    :cond_b
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 339
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 340
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 341
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 343
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 345
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 347
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 348
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 349
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 350
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 351
    iget-object v4, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v4, :cond_c

    .line 352
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3}, Lcn/nubia/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    move-object v14, v2

    goto :goto_6

    :catchall_0
    move-object v14, v2

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v14, v2

    goto :goto_b

    :cond_d
    :goto_6
    move-object v2, v14

    .line 402
    :goto_7
    :try_start_6
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_e

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 405
    :cond_e
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_f

    .line 406
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_8
    return-object v2

    :cond_10
    :goto_9
    :try_start_7
    const-string v0, "ReverseGeocoder"

    const-string v1, "Network unavailable"

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 402
    :try_start_8
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_11

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 405
    :cond_11
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_12

    .line 406
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_a
    return-object v14

    :catch_4
    move-exception v0

    .line 398
    :goto_b
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 402
    :try_start_a
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_13

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 405
    :cond_13
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_14

    .line 406
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_c
    return-object v14

    .line 402
    :catchall_1
    :goto_d
    :try_start_b
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_15

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 405
    :cond_15
    iget-object v0, v7, Lcn/nubia/gallery3d/util/ReverseGeocoder;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_16

    .line 406
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_e
    return-object v14
.end method
